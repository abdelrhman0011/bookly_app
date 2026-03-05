import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splach/presentation/views/splach_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const String splachview = '/';
  static const String homeview = '/homeview';
  static const String bookdetailsview = '/bookdetailsview';
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: splachview,
        builder: (BuildContext context, GoRouterState state) {
          return const SplachView();
        },
      ),
      GoRoute(path: homeview, builder: (context, state) => const HomeView()),
      GoRoute(path: bookdetailsview, builder: (context, state) => const BookDetailsView()),
    ],
  );
}