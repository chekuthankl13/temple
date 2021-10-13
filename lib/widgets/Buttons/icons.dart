// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  Null Function() onPressed;
  IconData icons;
  String txt;
  Color clr;

  ButtonIcon({
    Key? key,
    required this.onPressed,
    required this.icons,
    required this.txt,
    this.clr = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Container(
            height: 50,
            width: 50,
           
            decoration: BoxDecoration(
                color: clr,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                  )
                ],
                borderRadius: BorderRadius.circular(15)),
            
              child: IconButton(
                onPressed: onPressed,
                icon: Icon(icons, size: 50,),
                splashColor: Colors.red, 
              ),
            ),
        const SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13),
          child: SizedBox(
            height: 20,
            width: 62,
            child: Text(txt,style: const TextStyle(fontSize: 12),),
          ),
        ),
      ],
    );
  }
}


