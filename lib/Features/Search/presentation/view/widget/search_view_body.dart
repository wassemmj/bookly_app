import 'package:bookly_app/Features/Search/presentation/view/widget/search_result_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';
import 'build_text_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          BuildTextView(),
          SizedBox(height: 16,),
          Text(
            'Search Result',
            style: Style.titleMedium,
          ),
          SizedBox(height: 16,),
          Expanded(child: SearchResultListView(),),
        ],
      ),
    );
  }
}
