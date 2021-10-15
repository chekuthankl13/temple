import 'package:flutter/material.dart';

import 'package:temple/widgets/Buttons/button2.dart';

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
      
      height: 330,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            decoration: const BoxDecoration(
              
              image: DecorationImage(
                 fit: BoxFit.cover,
                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3Mh2uGXpsMV7LCDzvEts6bNRZWCApjkHalA&usqp=CAU')),
            ),
          ),
          const Positioned(
            top: 220,
            right: 10,
            child: SizedBox(
              width: 230,
              height: 60,
              child: Text(
                'Kumaranallur Karthiyani Devi Temple  ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Positioned(
            top: 280,
            child: Container(
              padding: const EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                color: Color(0xFFEEEEEE),
              ),
            ),
          ),
          const Positioned(
            top: 293,
            right: 30,
            child: Button2(
              onpressed: null,
              txt: '5',
            ),
          ),
          Positioned(
            top: 220,
            left: 30,
            child: Container(
              height: 90,
              width: 80,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcpkR6QPCUEgyibRvLGwZ_h3xxrdTIUGG4Lw&usqp=CAU'), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
