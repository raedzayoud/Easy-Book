part of 'similar_book_cubit.dart';

@immutable
sealed class SimilarBookState {}

final class SimilarBookInitial extends SimilarBookState {}

final class SimilarBookLoading extends SimilarBookState {}

final class SimilarBookFailure extends SimilarBookState {
  final String errorMessage;

  SimilarBookFailure({required this.errorMessage});
}

final class SimilarBookSuccess extends SimilarBookState {
  final List<BookModel> list;

  SimilarBookSuccess({required this.list});
}
