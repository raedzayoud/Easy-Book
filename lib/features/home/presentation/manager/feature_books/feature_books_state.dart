part of 'feature_books_cubit.dart';

@immutable
sealed class FeatureBooksState {}

final class FeatureBooksInitial extends FeatureBooksState {}
final class FeatureBooksLoading extends FeatureBooksState {}
final class FeatureBooksFailure extends FeatureBooksState {}
final class FeatureBooksSuccess extends FeatureBooksState {}
