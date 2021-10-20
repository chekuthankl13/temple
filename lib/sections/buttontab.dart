// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ButtonTabs extends StatelessWidget {
  List<Widget> children = const <Widget>[];
  ButtonTabs({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      color: const Color(0xFFFAFAFA),
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(top: 8, bottom: 1),
        children: children,
      ),
    );
  }
}
