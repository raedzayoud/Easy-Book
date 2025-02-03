import 'package:book/core/errors/failure.dart';
import 'package:book/core/utlis/apiservice.dart';
import 'package:book/features/home/data/model/book_model/book_model.dart';
import 'package:book/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final Apiservice apiservice;
  HomeRepoImpl(this.apiservice);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      var response = await apiservice.get(
          endPoints:
              "volumes?q=Programming&orderBy=newest&maxResults=30&startIndex=0");

      if (response == null || response['items'] == null) {
        return left(ServeurFailure(errorsMessage: "No books found"));
      }

      List<BookModel> listNewestBook = (response['items'] as List)
          .map((e) => BookModel.fromJson(e))
          .toList();

      return right(listNewestBook);
    } catch (e) {
      if (e is DioException) {
        return left(ServeurFailure.fromDioError(e));
      }
      return left(ServeurFailure(errorsMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var response = await apiservice.get(
        endPoints: "volumes?q=Programming&maxResults=30&startIndex=0",
      );

      if (response == null || response['items'] == null) {
        print("No books found");
        return left(ServeurFailure(errorsMessage: "No books found"));
      }

      List<BookModel> listBook = [];
      (response['items'] as List).forEach((e) {
        listBook.add(BookModel.fromJson(e));
      });
      print(listBook);

      return right(listBook);
    } catch (e) {
      if (e is DioException) {
        return left(ServeurFailure.fromDioError(e));
      }
      print(e.toString());
      return left(ServeurFailure(errorsMessage: e.toString()));
    }
  }
}
