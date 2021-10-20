import 'package:flutter/material.dart';

class Button3 extends StatelessWidget {
  final void Function()? onpressed;
  final String txt;
  final bool maindeitie;
  final Color clr;
  final Color txtclr;
  const Button3(
      {Key? key,
      required this.onpressed,
      required this.txt,
      this.maindeitie = false,
      this.clr = Colors.white,
      this.txtclr = const Color(0XFF003870)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 26,
      width: 90,
      child: TextButton(
        onPressed: onpressed,
        child: Text(
          txt,
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: txtclr,
          ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: clr,
          shadowColor: Colors.black87,
          side: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
          // elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          onSurface: Colors.lightBlue,
        ),
      ),
    );
  }
}
