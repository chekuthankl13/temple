import 'package:flutter/material.dart';
import 'package:temple/widgets/Tile/tile.dart';

class Deties extends StatefulWidget {
  const Deties({Key? key}) : super(key: key);

  @override
  _DetiesState createState() => _DetiesState();
}

class _DetiesState extends State<Deties> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Tile(name: 'Karthiyani Devi', maindeitie: true, children: [
          tilename('Nivedyam'),
          tilename('Pooja'),
          tilename('Abhishekam'),
          tilename('Archana'),
          tilename('Mala'),
        ]),
        Tile(name: 'Lord Shiva', children: [
          tilename('Abhishekam'),
          tilename('Archana / Pushpanjali'),
          tilename('Mala / Alankaram / Vilakku'),
        ]),
        Tile(name: 'Ganapathi', children: [
          tilename('Homam'),
        ]),
        Tile(name: 'Badrakali', children: [
          tilename('Abhishekam'),
          tilename('Archana / Pushpanjali'),
          tilename('Mala / Alankaram / Vilakku'),
        ]),
        Tile(name: 'Manibhooshanam', children: [
          tilename('Navedyam'),
        ]),
        Tile(name: 'Sarppam', children: [
          tilename('Navedyam'),
        ]),
      ],
    );
  }

  Widget tilename(String name) => Padding(
        padding: const EdgeInsets.only(left: 15, top: 0),
        child: ListTileTheme(
          contentPadding: const EdgeInsets.all(0),
          child: ListTile(
            minVerticalPadding: 1,
            dense: true,
            title: Text(
              name,
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
          ),
        ),
      );
}
