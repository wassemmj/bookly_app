import 'package:bookly_app/Features/Home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/view_model/similar_books_cubit/similar_books_state.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_list_item.dart';


class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit,SimilarBooksState>(
      builder: (context, state) {
        if(state is SimilarBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else if(state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CustomListItem(imageUrl: state.books[index].volumeInfo.imageLinks!=null? state.books[index].volumeInfo.imageLinks!.thumbnail : 'https://images.unsplash.com/photo-1585521747230-516376e5a85d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGlsZSUyMG9mJTIwYm9va3N8ZW58MHx8MHx8&w=1000&q=80',),
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
