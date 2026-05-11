import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/app_routers.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_implemnt.dart';
import 'package:bookly_app/features/home/presentation/mangers/FuaturedBooks_cubit/fuaturedbooks_cubit.dart';
import 'package:bookly_app/features/home/presentation/mangers/bestsellerboks_cubit/bestseller_books_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FuaturedbooksCubit(getit.get<HomeRepoImpl>())..fetchFuaturedBooks(),
        ),
        BlocProvider(
          create: (context) => BestsellerBooksCubit(getit.get<HomeRepoImpl>())..fetchBestsellerBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
