import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/rating.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import 'book_action.dart';
import 'custom_list_item.dart';


class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.30),
          child: CustomListItem(imageUrl: bookModel.volumeInfo.imageLinks!=null? bookModel.volumeInfo.imageLinks!.thumbnail:'https://images.unsplash.com/photo-1585521747230-516376e5a85d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGlsZSUyMG9mJTIwYm9va3N8ZW58MHx8MHx8&w=1000&q=80',),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: Style.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo.authors![0],
            style: Style.titleMedium.copyWith(
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        Rating(
          mainAxisAlignment: MainAxisAlignment.center,
          count: bookModel.volumeInfo.ratingsCount??0,
          rating: bookModel.volumeInfo.averageRating??0,
        ),
        const SizedBox(height: 37,),
        BookAction(bookModel: bookModel,),
      ],
    );
  }
}
