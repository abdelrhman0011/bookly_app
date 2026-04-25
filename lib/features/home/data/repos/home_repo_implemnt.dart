import 'package:bookly_app/core/errors/failurs.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/books_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks() async {
 try {
  var data =await apiService.get(endpoint: "volumes?q=subject :comics&filter=free-ebooks&key=AIzaSyDW53SaBNSUh66Cp7Aq1ui66s4uKfinW5g&Sorting=newest");
  List<BookModel> book =[];
  for (var item in data['items']) 
  {
      book.add(BookModel.fromJson(item));  
  }
  return right(book);
} catch (e) {
  if (e is DioException) {
    return left(ServerFailure.fromDioError(e));
  }
  return left(ServerFailure(e.toString()));
  
}
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchfeaturedBooks() async{
  try {
  var data =await apiService.get(endpoint: "volumes?q=subject :comics&filter=free-ebooks&key=AIzaSyDW53SaBNSUh66Cp7Aq1ui66s4uKfinW5g");
  List<BookModel> book =[];
  for (var item in data['items']) 
  {
      book.add(BookModel.fromJson(item));  
  }
  return right(book);
} catch (e) {
  if (e is DioException) {
    return left(ServerFailure.fromDioError(e));
  }
  return left(ServerFailure(e.toString()));
  
}
  }
  
}