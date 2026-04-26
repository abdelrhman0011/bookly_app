part of 'bestseller_books_cubit.dart';

sealed class BestsellerBooksState extends Equatable {
  const BestsellerBooksState();

  @override
  List<Object> get props => [];
}

final class BestsellerBooksInitial extends BestsellerBooksState {}
final class BestsellerBooksLoading extends BestsellerBooksState {}
final class BestsellerBooksSuccess extends BestsellerBooksState {
  final List <BookModel> books;

  const BestsellerBooksSuccess(this.books);
}
final class BestsellerBooksError extends BestsellerBooksState {
  final String errorMessage;
  const BestsellerBooksError(this.errorMessage);
}
