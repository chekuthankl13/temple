import 'package:flutter/material.dart';
import 'package:temple/sections/update.dart';

class Videos extends StatefulWidget {
  const Videos({ Key? key }) : super(key: key);

  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: const [
        SizedBox(
          height: 10,
        ),
        Text(
          'VIDEOS',
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