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
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade200, width: 1),
              borderRadius: BorderRadius.all(Radius.circular(5)),
              boxShadow: [
                if (widget.isPressed)
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 0.0,
                    offset: Offset(0, 4.0), // shadow direction: bottom right
                  )
              ],
            ),
            child: IconButton(
              onPressed: widget.onPressed,
              icon: widget.icons,
              splashColor: Colors.transparent,
              // splashColor: Colors.red,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.txt,
            style: TextStyle(
                fontSize: 10,
                color: widget.isPressed
                    ? Theme.of(context).primaryColor
                    : Colors.black),
          ),
        ],
      ),
    );
  }
}
