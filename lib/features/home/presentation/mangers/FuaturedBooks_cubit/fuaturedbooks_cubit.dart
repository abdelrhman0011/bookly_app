import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/books_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'fuaturedbooks_state.dart';

class FuaturedbooksCubit extends Cubit<FuaturedbooksState> {
  FuaturedbooksCubit(this.homeRepo) : super(FuaturedbooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFuaturedBooks() async {
    emit(FuaturedbooksLoading());
    var result = await homeRepo.fetchfeaturedBooks();
    result.fold((failure) {
      emit(FuaturedbooksError(failure.errMessage));
    }, (books) {
      emit(FuaturedbooksSuccess(books));
    });
  }
}
