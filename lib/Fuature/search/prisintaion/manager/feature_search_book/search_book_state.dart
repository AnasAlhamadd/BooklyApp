part of 'search_book_cubit.dart';

sealed class SearchBookState extends Equatable {
  const SearchBookState();

  @override
  List<Object> get props => [];
}

final class SearchBookInitial extends SearchBookState {}

final class SearchBookLoading extends SearchBookState {}

final class SearchBookSuccess extends SearchBookState {
  final List<Bookmodel> books;

  const SearchBookSuccess({required this.books});
}

final class SearchBookFaliure extends SearchBookState {
  final String errMesage;

  const SearchBookFaliure({required this.errMesage});
}
