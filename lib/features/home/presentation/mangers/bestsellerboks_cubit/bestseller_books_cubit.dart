import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/books_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'bestseller_books_state.dart';

class BestsellerBooksCubit extends Cubit<BestsellerBooksState> {
  BestsellerBooksCubit(this.homeRepo) : super(BestsellerBooksInitial());
   final HomeRepo homeRepo;
  Future<void> fetchBestsellerBooks() async {
    emit(BestsellerBooksLoading());
    var result = await homeRepo.fetchBestSellerBooks();
    result.fold((failure) {
      emit(BestsellerBooksError(failure.errMessage));
    }, (books) {
      emit(BestsellerBooksSuccess(books));
    });
  }
}
