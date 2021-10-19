// ignore_for_file: must_be_immutable

import 'package:clay_containers/clay_containers.dart';
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
          ClayContainer(
            height: 50,
            width: 50,
            depth: 35,
            spread: 15,
            curveType: CurveType.concave,
            borderRadius: 15,
            color: Colors.grey[100],
            child: Container(
              decoration: BoxDecoration(
                color: clr,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: IconButton(
                  onPressed: onPressed,
                  icon: icons,

                  // splashColor: Colors.red,
                ),
              ),
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
