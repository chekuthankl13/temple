import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:temple/widgets/Buttons/button3.dart';

class Followers extends StatelessWidget {
  final String txt;
  final bool follow;
  const Followers({Key? key, required this.txt, this.follow = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 53),
                child: Icon(CupertinoIcons.map),
              )
            ],
          ),
          Row(
            children: [
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
            ],
          ),
          Row(
            children: const [
              Button3(
                onpressed: null,
                txt: 'follow',
                txtclr: Colors.white,
                clr: Color(0XFF003870),
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),
        ],
      ),
    );
  }

  SizedBox space() {
    return const SizedBox(
      width: 5,
    );
  }
}
