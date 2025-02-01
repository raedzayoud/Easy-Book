part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksState {}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksFailure extends NewestBooksState {
  final String errorMessage;

  NewestBooksFailure({required this.errorMessage});
}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> list;

  NewestBooksSuccess({required this.list});
}
