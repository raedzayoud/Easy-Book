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
      var data = await apiservice.get(
          endPoints:
              "volumes?q=subject:Programming&Filtering=free-ebooks&Sorting=newest");
      List<BookModel> listNewestBook = [];
      for (var i = 0; i < data.length; i++) {
        listNewestBook.add(BookModel.fromJson(data[i]));
      }
      return right(listNewestBook);
    } catch (e) {
      if (e is DioException) {
        return Left(ServeurFailure.fromDioError(e));
      }
      return Left(ServeurFailure(errorsMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
