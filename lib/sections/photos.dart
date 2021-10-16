import 'package:flutter/material.dart';
import 'package:temple/sections/update.dart';

class Photo extends StatefulWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  _PhotoState createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 10,
        ),
        Text(
          'PHOTOS',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black45,
            fontSize: 17,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Updates()
      ],
    );
  }
}
