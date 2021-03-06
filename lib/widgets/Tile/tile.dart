// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  String name;

  List<Widget> children = const <Widget>[];

  bool maindeitie;
  Tile(
      {Key? key,
      required this.name,
      required this.children,
      this.maindeitie = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTileTheme(
          contentPadding: const EdgeInsets.only(left: 10),
          child: ExpansionTile(
            title: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                maindeitie
                    ? Container(
                        height: 20,
                        width: 65,
                        margin: const EdgeInsets.only(left: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: const Color.fromRGBO(33, 48, 197, 1)),
                          boxShadow: const [
                            BoxShadow(color: Colors.black),
                            BoxShadow(color: Colors.white)
                          ],
                        ),
                        child: const Center(
                            child: Text(
                          'Main Deity',
                          style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(33, 48, 197, 1)),
                        )),
                      )
                    : const SizedBox(),
              ],
            ),
            children: children,
          ),
        ),
      ],
    );
  }
}
