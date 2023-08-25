import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_list_item.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/style.dart';


class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key, required this.book}) : super(key: key);

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push('/Details',extra: book),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomListItem(imageUrl: book.volumeInfo.imageLinks!=null ?book.volumeInfo.imageLinks!.thumbnail:'https://images.unsplash.com/photo-1585521747230-516376e5a85d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGlsZSUyMG9mJTIwYm9va3N8ZW58MHx8MHx8&w=1000&q=80'),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      book.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Style.textStyle20,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    book.volumeInfo.authors!=null ? book.volumeInfo.authors![0]:'s',
                    overflow: TextOverflow.ellipsis,
                    style: Style.textStyle14,
                  ),
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free',
                        style: Style.textStyle20.copyWith(fontWeight: FontWeight.bold),
                      ),
                      //const Spacer(),
                      Rating(rating: book.volumeInfo.averageRating ?? 0,count: book.volumeInfo.ratingsCount ?? 0,),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

