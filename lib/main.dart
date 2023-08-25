import 'package:bookly_app/Features/Home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/Features/Home/presentation/view_model/featured_books_cubits/featured_books_cubit.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Features/Home/presentation/view_model/newest_books/newest_books_cubit.dart';
import 'core/utils/service_locater.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (BuildContext context) => FeaturedBooksCubit(
            getIt.get<HomeRepoImpl>()
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (BuildContext context) => NewestBooksCubit(
              getIt.get<HomeRepoImpl>()
          )..fetchNewestBooks(),
        ),

      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
