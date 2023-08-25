import 'package:flutter/material.dart';

import '../utils/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.backgroundColor, required this.textColor, this.borderRadius, required this.text, required this.onPressed}) : super(key: key);

  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: borderRadius!=null ? borderRadius! : BorderRadius.circular(16),
          )),
          backgroundColor: MaterialStateProperty.all(backgroundColor),
        ),
        child: Text(
          text,
          style: Style.titleMedium.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
