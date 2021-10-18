// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonIcon extends StatelessWidget {
  Null Function() onPressed;
  SvgPicture icons;
  String txt;
  Color clr;

  ButtonIcon({
    Key? key,
    required this.onPressed,
    required this.icons,
    required this.txt,
    this.clr = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: clr,
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFFBDBDBD),
                  blurRadius: 2.0,
                  spreadRadius: 2.5,
                  offset: Offset(3.0, 3.0),
                ),
                BoxShadow(color: Colors.black12)
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              onPressed: onPressed,
              icon: icons,
              splashColor: Colors.red,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            txt,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
