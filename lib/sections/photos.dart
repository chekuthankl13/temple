import 'package:flutter/material.dart';
import 'package:temple/widgets/posts.dart';

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
        Posts(
          avatar:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcpkR6QPCUEgyibRvLGwZ_h3xxrdTIUGG4Lw&usqp=CAU',
          name: 'Yammarakunlgara Sree Maha ganapathy ',
          time: '12 h',
          txt: 'festival of light and happy',
          img:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAdtuPCilKq3ahxpaPCpyXT-PLWVSoJO6LLA&usqp=CAU',
          like: '100',
          comment: '5',
        ),
        Posts(
          avatar:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcpkR6QPCUEgyibRvLGwZ_h3xxrdTIUGG4Lw&usqp=CAU',
          name: 'Kumaranallur Karthiyani Devi Temple',
          time: '12 h',
          txt: 'karthikadeepam festival',
          img:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJ_TDVNlkVIzqEsFV6-J1AkttLb7XirfTBrA&usqp=CAU',
          like: '100',
          comment: '5',
        ),
      ],
    );
  }
}
