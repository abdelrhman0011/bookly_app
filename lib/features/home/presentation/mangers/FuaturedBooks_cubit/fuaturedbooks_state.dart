part of 'fuaturedbooks_cubit.dart';

sealed class FuaturedbooksState extends Equatable {
  const FuaturedbooksState();

  @override
  List<Object> get props => [];
}

final class FuaturedbooksInitial extends FuaturedbooksState {}
final class FuaturedbooksLoading extends FuaturedbooksState {}
final class FuaturedbooksSuccess extends FuaturedbooksState {
  final List <BookModel> books;

  const FuaturedbooksSuccess(this.books);
}
final class FuaturedbooksError extends FuaturedbooksState {
  final String errorMessage;
  const FuaturedbooksError(this.errorMessage);
}
