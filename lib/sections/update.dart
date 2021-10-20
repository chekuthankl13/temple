import 'package:flutter/material.dart';
import 'package:temple/widgets/post.dart';

class Updates extends StatelessWidget {
  const Updates({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Post(
          avatar: Image.asset('assets/v3.jpeg'),
          name: 'Kumaranallur Karthiyani Devi Temple ',
          time: '12h',
          txt: 'Festival of light and happiness',
          img: 'assets/aana.jpeg',
          like: '100',
          comment: '5',
        ),
        Post(
          avatar: Image.asset('assets/v3.jpeg'),
          name: 'Kumaranallur Karthiyani Devi Temple ',
          time: '12h',
          txt:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rutrum neque vitae dolor porta, in ullamcorper risus consectetur. Nullam at mauris magna.',
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
        space(),
        space()
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
      ],
    );
  }

  SizedBox space() {
    return const SizedBox(
      height: 15,
    );
  }
}
