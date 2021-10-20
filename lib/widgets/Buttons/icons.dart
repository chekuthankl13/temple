// ignore_for_file: must_be_immutable

import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonIcon extends StatefulWidget {
  Null Function() onPressed;
  SvgPicture icons;
  String txt;
  bool isPressed;

  ButtonIcon({
    Key? key,
    required this.onPressed,
    required this.icons,
    required this.txt,
    this.isPressed = false,
  }) : super(key: key);

  @override
  State<ButtonIcon> createState() => _ButtonIconState();
}

class _ButtonIconState extends State<ButtonIcon>
    with SingleTickerProviderStateMixin {
  // double firstDepth = 20;
  // double secondDepth = 20;
  // late AnimationController _animationController;

  // @override
  // void initState() {
  //   _animationController = AnimationController(
  //     vsync: this,
  //     duration: Duration(seconds: 3),
  //   )..addListener(() {
  //       setState(() {});
  //     });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      // color: Colors.yellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          ClayContainer(
            height: 50,
            width: 50,
            depth: 20,
            spread: 3,
            emboss: true,
            curveType: widget.isPressed ? CurveType.concave : CurveType.convex,
            borderRadius: 15,
            color: const Color(0xFFF5F5F5),
            child: Container(
              decoration: BoxDecoration(
                // color: clr,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: IconButton(
                  onPressed: widget.onPressed,
                  icon: widget.icons,
                  // splashColor: Colors.red,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.txt,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }
}
