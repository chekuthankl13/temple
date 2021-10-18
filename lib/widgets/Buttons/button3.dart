import 'package:flutter/material.dart';

class Button3 extends StatelessWidget {
  final void Function()? onpressed;
  final String txt;
  final bool maindeitie;
  const Button3(
      {Key? key,
      required this.onpressed,
      required this.txt,
      this.maindeitie = false})
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
          style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              
              color: Color(0XFF003870),
              ),
        ),
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shadowColor: Colors.black87,
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          onSurface: Colors.lightBlue,
        ),
      ),
    );
  }
}
