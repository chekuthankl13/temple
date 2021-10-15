import 'package:flutter/material.dart';
import 'package:temple/widgets/Tile/category.dart';
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
          Category(
            name: 'Vella Naivedyam',
            detiename: 'Karthiyani Devi',
            onpressed: () => print('book offering'),
          ),
          Category(
            name: 'Chathussatham 1',
            detiename: 'Karthiyani Devi',
            onpressed: null,
          ),
          Category(
            name: 'Chathussatham 1/2',
            detiename: 'Karthiyani Devi',
            onpressed: null,
          ),
          Category(
            name: 'Chathussatham 1/4',
            detiename: 'Karthiyani Devi',
            onpressed: null,
          ),
          Category(
            name: 'Kadumpayasam',
            detiename: 'Karthiyani Devi',
            onpressed: null,
          ),
          Category(
            name: 'Koottopayasam',
            detiename: 'Karthiyani Devi',
            onpressed: null,
          ),
          Category(
            name: 'Arunavazhi',
            detiename: 'Karthiyani Devi',
            onpressed: null,
          ),
          Category(
            name: 'Valiya Koottupayasam',
            detiename: 'Karthiyani Devi',
            onpressed: null,
          ),
        ]),
        Tile(name: 'Pushpanjali / Archana', children: [
          Category(
            name: 'Moolamanthra Archana',
            detiename: 'Karthiyani Devi',
            onpressed: null,
          ),
          Category(
            name: 'Bhagya Sooktham',
            detiename: 'Karthiyani Devi',
            onpressed: null,
          ),
          Category(
            name: 'Shree Sookatham',
            detiename: 'Karthiyani Devi',
            onpressed: null,
          ),
          Category(
            name: 'Purusha Sookatham',
            detiename: 'Karthiyani Devi',
            onpressed: null,
          ),
          Category(
            name: 'Vidhya Saaraswatha Manthram',
            detiename: 'Karthiyani Devi',
            onpressed: null,
          ),
          Category(
            name: 'Vidhya Gopalamanthram',
            detiename: 'Karthiyani Devi',
            onpressed: null,
          ),
          Category(
            name: 'Swayanmvara Manthram',
            detiename: 'Karthiyani Devi',
            onpressed: null,
          ),
          Category(
            name: 'Aikyamathya Sookatham',
            detiename: 'Karthiyani Devi',
            onpressed: null,
          ),
          Category(
            name: 'Mriyunjaya Manthram',
            detiename: 'Lord Shiva',
            onpressed: null,
          ),
          Category(
            name: 'Mahadeva Moolamanthram',
            detiename: 'Lord Shiva',
            onpressed: null,
          ),
          Category(
            name: 'Raktha Pushpanjali',
            detiename: 'Badrakali',
            onpressed: null,
          ),
          Category(
            name: 'Shatru Samhara Pushpanajali',
            detiename: 'Badrakali',
            onpressed: null,
          ),
          Category(
            name: 'Guruthi Pushpanajali',
            detiename: 'Badrakali',
            onpressed: null,
          ),
        ]),
        Tile(name: 'Homam', children: [
          Category(
            name: 'Ganapathi Hommam',
            detiename: 'Ganapathi',
            onpressed: null,
          ),
        ]),
        Tile(name: 'Mala / Vilaku', children: [
          Category(
            name: 'Mala',
            detiename: 'Karthiyani Devi \n Lord Shiva',
            onpressed: null,
          ),
          Category(
            name: ' katti Mala',
            detiename: 'Karthiyani Devi',
            onpressed: null,
          ),
          Category(
            name: 'Niramala',
            detiename: 'Karthiyani Devi',
            onpressed: null,
          ),
          Category(
            name: 'Bhadra Deepam',
            detiename: 'Karthiyani Devi',
            onpressed: null,
          ),
          Category(
            name: 'Koovala Mala',
            detiename: 'Lord Shiva',
            onpressed: null,
          ),
          Category(
            name: 'Chembarathi Mala',
            detiename: 'Badrakali',
            onpressed: null,
          ),
        ]),
        Tile(name: 'Abhishekam', children: [
          Category(
            name: 'Manjal Abhishekam ',
            detiename: 'Karthiyani Devi',
            onpressed: null,
          ),
          Category(
            name: 'Jala Dhaara',
            detiename: 'Lord Shiva',
            onpressed: null,
          ),
          Category(
            name: 'Karikku Abhishekam ',
            detiename: 'Badrakali',
            onpressed: null,
          ),
        ]),
        const SizedBox(height: 10)
      ],
    );
  }
}
