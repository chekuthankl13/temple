import 'package:flutter/material.dart';

class Button2 extends StatelessWidget {
  final void Function()? onpressed;
  final String txt;
  final bool follow;
  const Button2(
      {Key? key,
      required this.onpressed,
      required this.txt,
      this.follow = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.people, size: 15, color: Color(0xFF616161)),
        space(),
        Text(
          txt,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Color(0xFF616161)),
        ),
        space(),
        const Text(
          'Followers',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF616161),
          ),
        ),
        const SizedBox(
          width: 70,
        ),
        Container(
          height: 20,
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromRGBO(33, 48, 197, 1)),
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
            boxShadow: const [
              BoxShadow(color: Colors.black),
              BoxShadow(color: Colors.white)
            ],
          ),
          child: InkWell(
            onTap: () {},
            child: const Center(
                child: Text(
              'Follow',
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(33, 48, 197, 1)),
            )),
          ),
        ),
      ],
    );
  }

  SizedBox space() {
    return const SizedBox(
      width: 5,
    );
  }
}
