import 'package:flutter/material.dart';

import 'package:temple/widgets/Buttons/followers.dart';
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
                // color: Colors.redAccent,
                color:  Color(0xFFFAFAFA),
                //  Color(0xFFFAFAFA),
              ),
            ),
          ),
          Positioned(
              top: 249,
              left: MediaQuery.of(context).size.width / 3.3,
              child: const Text('Kochi, Kerala',style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF616161),
                ),),
              // const Button3(onpressed: null, txt: 'Follow'),
              
              ),
          Positioned(
            top: 175,
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
          const Positioned(top: 300, right: 15, child:  Followers(txt: '5.2K')),
        ],
      ),
    );
  }
}
