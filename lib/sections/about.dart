import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temple/widgets/about_row.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        children: [
          AboutRow(
              title: 'About Temple',
              icon: CupertinoIcons.doc_text,
              txt:
                  'Kumaranallor devi temple is considered as one of the most important devi temple among the 108 durgalayas in kerala.Kumaranalloor Devi Temple is considered as one of the most important Devi temples among the 108 Durgalayas (Devi temples) in Kerala.'),
          AboutRow(
              icon: CupertinoIcons.location,
              txt:
                  'Kumaranallor Karthiyani Devi Temple \nPeringara P.O, Thiruvalla, \nKerala, 680180'),
          AboutRow(
              icon: CupertinoIcons.phone,
              txt:
                  '+91 98897 85800'),
          AboutRow(
              icon: CupertinoIcons.phone,
              txt:
                  '+91 12345 67890'),
          
        ],
        //   children: [
        //     const SizedBox(
        //       height: 10,
        //     ),
        //     contents(context,
        //         ' Kumaranallor devi temple is considered as one of the most important devi temple among the 108 durgalayas in kerala'),
        //     const Divider(
        //       height: 25,
        //     ),
        //     heading('ADDRESS'),
        //     contents(context,
        //         'Kumaranallur Karthiyani Devi Temple ,\n\n peringara po, Thriruvalla \n \n Kerala , 680180\n  \n +91 9889785800'),
        //     const SizedBox(
        //       height: 15,
        //     ),
        //     Center(
        //       child: TextButton(
        //         child: const Text('follow on map'),
        //         onPressed: () {},
        //         style: TextButton.styleFrom(
        //             backgroundColor: Colors.black26, primary: Colors.white54),
        //       ),
        //     ),
        //     const SizedBox(
        //       height: 15,
        //     ),
        //   ],
      ),
    );
  }

  // Container contents(BuildContext context, String txt) {
  //   return Container(
  //     margin: const EdgeInsets.only(top: 20, left: 10, right: 10),
  //     padding: const EdgeInsets.all(25),
  //     decoration: const BoxDecoration(
  //       boxShadow: [
  //         BoxShadow(
  //           color: Colors.black12,
  //         )
  //       ],
  //       color: Colors.white54,
  //     ),
  //     height: 150,
  //     width: MediaQuery.of(context).size.width,
  //     child: Text(
  //       txt,
  //       style: const TextStyle(
  //         fontWeight: FontWeight.bold,
  //         color: Colors.black45,
  //         wordSpacing: 2,
  //       ),
  //     ),
  //   );
  // }

  // Container heading(String name) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       color: Colors.white10,
  //       borderRadius: BorderRadius.circular(10),
  //     ),
  //     child: Text(
  //       name,
  //       style: const TextStyle(
  //         fontWeight: FontWeight.bold,
  //         color: Colors.black45,
  //         fontSize: 17,
  //       ),
  //     ),
  //   );
  // }
}
