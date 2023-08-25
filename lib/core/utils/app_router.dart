import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/views/home_view.dart';
import 'package:bookly_app/core/utils/service_locater.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Home/data/repos/home_repo_impl.dart';
import '../../Features/Home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import '../../Features/Home/presentation/views/book_details_view.dart';
import '../../Features/Search/presentation/view/search_view.dart';
import '../../Features/Splash/presentation/views/splash_view.dart';

import 'package:flutter/material.dart';


class AppRouter {
  static final router = GoRouter(
      routes: [
        GoRoute(path: '/',builder: (context,state) => const SplashView()),
        GoRoute(path: '/HomeView',builder: (context,state) => const HomeView()),
        GoRoute(path: '/Details',builder: (context,state) =>BlocProvider(
          create: (BuildContext context) => SimilarBooksCubit(
              getIt.get<HomeRepoImpl>()
          ),
          child: BookDetailsView(book: state.extra as BookModel,),
        ),),
        GoRoute(path: '/Search',builder: (context,state) => const SearchView()),
      ]
  );
}