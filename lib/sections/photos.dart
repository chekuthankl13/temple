import 'package:flutter/material.dart';
import 'package:temple/widgets/post.dart';

class Photo extends StatefulWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  _PhotoState createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(
        //   height: 10,
        // ),
        // SizedBox(
        //   height: 10,
        // ),
        Post(
          avatar: Image.asset('assets/v3.jpeg'),
          name: 'Kumaranallur Karthiyani Devi Temple',
          time: '12h',
          txt: 'Festival of light and happiness',
          img: 'assets/aana.jpeg',
          like: '100',
          comment: '5',
        ),
        Post(
          avatar: Image.asset('assets/v3.jpeg'),
          name: 'Kumaranallur Karthiyani Devi Temple',
          time: '12h',
          txt: 'Karthikadeepam festival',
          img: 'assets/temple_1.jpeg',
          like: '100',
          comment: '5',
        ),
      ],
    );
  }
}
