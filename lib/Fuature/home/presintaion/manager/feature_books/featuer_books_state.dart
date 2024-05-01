part of 'featuer_books_cubit.dart';

sealed class FeatuerBooksState extends Equatable {
  const FeatuerBooksState();

  @override
  List<Object> get props => [];
}

final class FeatuerBooksInitial extends FeatuerBooksState {}

final class FeatuerBooksLoading extends FeatuerBooksState {}

final class FeatuerBooksSuccess extends FeatuerBooksState {
  final List<Bookmodel> books;
  const FeatuerBooksSuccess(this.books);
}

final class FeatuerBooksFaliure extends FeatuerBooksState {
  final String errMesage;

  const FeatuerBooksFaliure(this.errMesage);
}
