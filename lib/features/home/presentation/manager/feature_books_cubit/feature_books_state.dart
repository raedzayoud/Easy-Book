part of 'feature_books_cubit.dart';

@immutable
sealed class FeatureBooksState {}

final class FeatureBooksInitial extends FeatureBooksState {}

final class FeatureBooksLoading extends FeatureBooksState {}

final class FeatureBooksFailure extends FeatureBooksState {
  final String errorMessage;

  FeatureBooksFailure({required this.errorMessage});
}

final class FeatureBooksSuccess extends FeatureBooksState {
  final List<BookModel> list;

  FeatureBooksSuccess({required this.list});
}
