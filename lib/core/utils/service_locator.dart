import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implemnt.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;

void setupServiceLocator() {
  getit.registerSingleton<HomeRepoImpl>(HomeRepoImpl(ApiService(Dio())));
}
