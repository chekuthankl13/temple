// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ButtonTabs extends StatelessWidget {
  List<Widget> children = const <Widget>[];
  ButtonTabs({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        padding:const EdgeInsets.only(top: 5),
        color: Colors.grey[300],
        
        height: 100, 
        child: ListView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(top: 5, bottom: 5),
          children: children,
        ),
      ),
    );
  }
}
