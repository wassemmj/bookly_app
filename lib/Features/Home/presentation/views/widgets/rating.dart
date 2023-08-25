import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class Rating extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;

  const Rating({Key? key,this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(Icons.star,color: Colors.yellow,size: 14,),
        const SizedBox(width: 6.3,),
        Text(
          '$rating',
          style: Style.textStyle16,
        ),
        const SizedBox(width: 5,),
        Opacity(
          opacity: .5,
          child: Text(
            '($count)',
            style: Style.textStyle14.copyWith(
              fontWeight: FontWeight.w600
            ),
          ),
        )
      ],
    );
  }
}
