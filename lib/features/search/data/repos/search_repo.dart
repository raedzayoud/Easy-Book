import 'package:book/core/errors/failure.dart';
import 'package:book/features/home/data/model/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchReop{

 Future<Either<Failure,List<BookModel>>> FetchSearchData({required String title});
  
}