// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Button1 extends StatefulWidget {
  const Button1({
    Key? key,
  }) : super(key: key);

  @override
  State<Button1> createState() => _Button1State();
}

class _Button1State extends State<Button1> {
  bool valu = true;
  // ignore: non_constant_identifier_names
  var Clr;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Center(
        child: IconButton(
          color: Clr,
          icon: const Icon(
            Icons.bookmark_add_outlined,
            size: 15,
          ),
          onPressed: _bookmark,
        ),
      ),
    );
  }

  void _bookmark() {}
}
