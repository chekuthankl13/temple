import 'package:flutter/material.dart';
import 'package:temple/widgets/Tile/tile.dart';

class Offerings extends StatefulWidget {
  const Offerings({Key? key}) : super(key: key);

  @override
  _OfferingsState createState() => _OfferingsState();
}

class _OfferingsState extends State<Offerings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Tile(name: 'Nivedyam', children: [
          tilename('Karthiyani Devi'),
          tilename('Manibhooshanm'),
          tilename('Sarppam'),
        ]),
        Tile(name: 'Pushpanjali / Archana', children: [
          tilename('Badrakali'),
          tilename('Lord Shiva'),
          tilename('Karthiyani Devi'),
        ]),
        Tile(name: 'Homam', children: [tilename('Ganapathi')]),
        Tile(name: 'Mala / Vilaku', children: [
          tilename('Badrakali'),
          tilename('Lord Shiva'),
          tilename('Karthiyani Devi'),
        ]),
        Tile(name: 'Abhishekam', children: [
          tilename('Karthiyani Devi'),
          tilename('Lord Shiva'),
          tilename('Badrakali'),
        ])
      ],
    );
  }

  Widget tilename(String name) => Padding(
        padding: const EdgeInsets.only(left: 10),
        child: ListTile(
          title: Text(name),
        ),
      );
}
