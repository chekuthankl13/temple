import 'package:flutter/material.dart';

class Button2 extends StatelessWidget {
  final String txt;
  final bool follow;
  const Button2({Key? key, required this.txt, this.follow = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
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
        width: 40,
      ),
    ]);
  }

  SizedBox space() {
    return const SizedBox(
      width: 5,
    );
  }
}
