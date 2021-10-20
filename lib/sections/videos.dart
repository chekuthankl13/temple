import 'package:flutter/material.dart';
import 'package:temple/widgets/post.dart';

class Videos extends StatefulWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        // Post(
        //   avatar: Image.asset('assets/v3.jpeg'),
        //   name: 'Yammarakunlgara Sree Maha ganapathy ',
        //   time: '2',
        //   txt: 'festival of light and happy',
        //   videoUrl: 'RN-LVlljxMg',
        //   like: '200',
        //   comment: '8',
        // ),
        // Post(
        //   avatar: Image.asset('assets/v3.jpeg'),
        //   name: 'Yammarakunlgara Sree Maha ganapathy ',
        //   time: '12h',
        //   txt: 'festival of light and happy',
        //   videoUrl: 'p5kY_2EveE0',
        //   like: '100',
        //   comment: '5',
        // ),
        Text('It\'s empty here!')
      ],
    );
  }
}
