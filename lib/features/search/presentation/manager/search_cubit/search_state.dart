part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}
final class SearchLoading extends SearchState {}
final class SearchFailure extends SearchState {
  final String errorMessage;
  SearchFailure({required this.errorMessage});
}
final class SearchSuccess extends SearchState {
  List<BookModel>book;
  SearchSuccess({required this.book});
}
