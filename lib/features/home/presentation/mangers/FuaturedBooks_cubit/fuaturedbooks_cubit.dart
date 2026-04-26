import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/books_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'fuaturedbooks_state.dart';

class FuaturedbooksCubit extends Cubit<FuaturedbooksState> {
  FuaturedbooksCubit() : super(FuaturedbooksInitial());
}
