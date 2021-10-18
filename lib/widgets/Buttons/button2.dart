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
      Column(
        children: [
          const SizedBox(
            height: 2,
          ),
          SizedBox(
            height: 24,
            width: 80,
            child: TextButton(
              onPressed: onpressed,
              child: const Text(
                'Follow',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(33, 48, 197, 1)),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shadowColor: Colors.black87,
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                onSurface: Colors.lightBlue,
              ),
            ),
          ),
        ],
      ),
    ]);
  }

  SizedBox space() {
    return const SizedBox(
      width: 5,
    );
  }
}
