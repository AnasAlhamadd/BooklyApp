part of 'feature_newest_books_cubit.dart';

sealed class FeatureNewestBooksState extends Equatable {
  const FeatureNewestBooksState();

  @override
  List<Object> get props => [];
}

final class FeatureNewestBooksInitial extends FeatureNewestBooksState {}

final class FeatureNewestBooksLoading extends FeatureNewestBooksState {}

final class FeatureNewestBooksSuccess extends FeatureNewestBooksState {
  final List<Bookmodel> books;
  const FeatureNewestBooksSuccess(this.books);
}

final class FeatureNewestBooksFaliure extends FeatureNewestBooksState {
  final String errMessage;

  const FeatureNewestBooksFaliure(this.errMessage);
}
