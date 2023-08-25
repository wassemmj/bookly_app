import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/core/utils/function/launch_url.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widget/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({Key? key, required this.bookModel}) : super(key: key);

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: 'Free',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16),),
              onPressed: () {  },
            ),
          ),
          Expanded(
            child: CustomButton(
              text: getText(bookModel),
              backgroundColor: const Color(0xffef8262),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(topRight: Radius.circular(16),bottomRight: Radius.circular(16),),
              onPressed: () {
                launchCustomUr(context, bookModel.volumeInfo.previewLink);
              },
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if(bookModel.volumeInfo.previewLink == null) {
      return 'Not Available';
    }
    return 'Free Preview';
  }
}
