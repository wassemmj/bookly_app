import 'package:flutter/material.dart';

import '../../../../../core/utils/style.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({Key? key, required this.errMessage}) : super(key: key);

  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        textAlign: TextAlign.center,
        style: Style.titleMedium,
      ),
    );
  }
}
