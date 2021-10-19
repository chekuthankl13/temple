import 'package:flutter/material.dart';
import 'package:temple/widgets/posts.dart';

class Updates extends StatelessWidget {
  const Updates({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
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
        Posts(
          video: true,
          avatar:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcpkR6QPCUEgyibRvLGwZ_h3xxrdTIUGG4Lw&usqp=CAU',
          name: 'Yammarakunlgara Sree Maha ganapathy ',
          time: '2',
          txt: 'festival of light and happy',
          img: 'RN-LVlljxMg',
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
          img: 'p5kY_2EveE0',
          like: '100',
          comment: '5',
        ),
      ],
    );
  }

  SizedBox space() {
    return const SizedBox(
      height: 15,
    );
  }
}
