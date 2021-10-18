// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:temple/widgets/Buttons/button3.dart';

class Category extends StatelessWidget {
  String name;
  String detiename;
  void Function()? onpressed;

  Category(
      {Key? key,
      required this.name,
      required this.detiename,
      required this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      contentPadding: const EdgeInsets.only(left: 10, top: 0),
      child: ExpansionTile(
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            name,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ),
        children: [
          ListTile(
            dense: true,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 50,
            ),
            title: Text(detiename, style: const TextStyle(fontSize: 13)),
            trailing: Button3(onpressed: onpressed, txt: 'Book Now'),
          ),
        ],
      ),
    );
  }
}
