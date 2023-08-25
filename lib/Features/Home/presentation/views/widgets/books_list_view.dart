import 'package:bookly_app/Features/Home/presentation/view_model/featured_books_cubits/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../view_model/featured_books_cubits/featured_books_state.dart';
import 'custom_error_widget.dart';
import 'custom_list_item.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push('/Details',extra: state.books[index]);
                    },
                      child: CustomListItem(
                    imageUrl: state.books[index].volumeInfo.imageLinks != null
                        ? state.books[index].volumeInfo.imageLinks!.thumbnail
                        : 'https://images.unsplash.com/photo-1585521747230-516376e5a85d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGlsZSUyMG9mJTIwYm9va3N8ZW58MHx8MHx8&w=1000&q=80',
                  )),
                );
              },
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
