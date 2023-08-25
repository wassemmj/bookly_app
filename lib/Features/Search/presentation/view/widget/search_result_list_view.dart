
import 'package:flutter/material.dart';

import '../../../../Home/presentation/views/widgets/best_seller_list_view_item.dart';



class SearchResultListView extends StatelessWidget {
  const SearchResultListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context,index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          //child: BestSellerListViewItem(book: ,),
          child: Text('hg'),
        );
      },
    );
  }
}
