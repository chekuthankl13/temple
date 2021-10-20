import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:temple/widgets/Buttons/button3.dart';

class Header extends StatefulWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: AspectRatio(
              aspectRatio: 16 / 8,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3Mh2uGXpsMV7LCDzvEts6bNRZWCApjkHalA&usqp=CAU',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 190,
            left: MediaQuery.of(context).size.width / 3.3,
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              height: 80,
              child: const Text(
                'Kumaranallur Karthiyani Devi Temple ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      color: Colors.black,
                    ),
                    Shadow(
                      color: Colors.black87,
                    )
                  ],
                  fontSize: 17,
                ),
              ),
            ),
          ),
          Positioned(
            top: 239,
            child: Container(
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 90,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Color(0xFFFAFAFA),
              ),
            ),
          ),
          Positioned(
            top: 249,
            left: MediaQuery.of(context).size.width / 3.3,
            child: const Text(
              '5.7K Followers',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFF616161),
              ),
            ),
          ),
          Positioned(
            top: 180,
            left: MediaQuery.of(context).size.width / 25,
            child: Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcpkR6QPCUEgyibRvLGwZ_h3xxrdTIUGG4Lw&usqp=CAU'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
              ),
            ),
          ),
          Positioned(
            top: 290,
            child: SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 18, right: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      // width: MediaQuery.of(context).size.width,
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.map,
                          color: Colors.grey[700],
                        ),
                        label: Text(
                          'Open in Maps',
                          style: TextStyle(
                            color: Colors.grey[700],
                            // fontWeight: FontWeight.w500,
                          ),
                        ),
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            backgroundColor: Colors.grey[200]),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      // width: MediaQuery.of(context).size.width / 2,
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.heart,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'Follow',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            backgroundColor: Theme.of(context).primaryColor),
                      ),
                    ),
                  ],
                ),
              ),
              // const Padding(
              //   padding: EdgeInsets.only(left: 50),
              //   child: Icon(CupertinoIcons.map),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 16),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: const [
              //       // Text(
              //       //   '5.3K',
              //       //   style: TextStyle(
              //       //       fontWeight: FontWeight.bold,
              //       //       fontSize: 14,
              //       //       color: Color(0xFF616161)),
              //       // ),
              //       // SizedBox(
              //       //   width: 3,
              //       // ),
              //       // Text(
              //       //   'Followers',
              //       //   style: TextStyle(
              //       //     fontWeight: FontWeight.bold,
              //       //     fontSize: 14,
              //       //     color: Color(0xFF616161),
              //       //   ),
              //       // ),
              //     ],
              //   ),
              // ),
              // const Padding(
              //   padding: EdgeInsets.only(right: 12, top: 1),
              //   child: Button3(
              //     onpressed: null,
              //     txt: 'Follow',
              //     clr: Color(0XFF003870),
              //     txtclr: Colors.white,
              //   ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
