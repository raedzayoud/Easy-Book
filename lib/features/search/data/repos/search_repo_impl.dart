import 'package:book/core/errors/failure.dart';
import 'package:book/core/utlis/apiservice.dart';
import 'package:book/features/home/data/model/book_model/book_model.dart';
import 'package:book/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchReop {
  final Apiservice apiservice;
  SearchRepoImpl(this.apiservice);
  @override
  Future<Either<Failure, List<BookModel>>> FetchSearchData({required String title})async {
    try {
      var response = await apiservice.get(
        endPoints: "volumes?q=intitle:$title",
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