import 'package:flutter/material.dart';
import 'package:temple/widgets/posts.dart';

class Videos extends StatefulWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  _VideosState createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
        

        Posts(
          video: true,
          avatar:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcpkR6QPCUEgyibRvLGwZ_h3xxrdTIUGG4Lw&usqp=CAU',
          name: 'Yammarakunlgara Sree Maha ganapathy ',
          time: '2',
          txt: 'festival of light and happy',
          img: 'assets/v1.jpg',
          like: '200',
          comment: '8',
        ),
        Posts(
          video: true,
          avatar:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcpkR6QPCUEgyibRvLGwZ_h3xxrdTIUGG4Lw&usqp=CAU',
          name: 'Yammarakunlgara Sree Maha ganapathy ',
          time: '12 h',
          txt: 'festival of light and happy',
          img: 'assets/v2.jpg',
          like: '100',
          comment: '5',
        ),
      ],
    );
  }
}
