import 'package:bookly_app/Features/Home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class SimilarBookSection extends StatelessWidget {
  const SimilarBookSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also Like',
          style: Style.textStyle14.copyWith(
              fontWeight: FontWeight.w600
          ),
        ),
        const SizedBox(height: 16,),
        const SimilarBookListView(),
      ],
    );
  }
}
