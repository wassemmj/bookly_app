import 'package:flutter/material.dart';


class BuildTextView extends StatelessWidget {
  const BuildTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'search',
          suffixIcon: IconButton(
            icon: const Opacity(
              opacity: 0.8,
              child: Icon(Icons.search),
            ),
            onPressed: () {},
          ),
          enabledBorder: buildOutlineInputBorder()),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Colors.white,
        ));
  }
}
