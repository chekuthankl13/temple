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
      // color: Colors.black12,
      height: 330,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            decoration: const BoxDecoration(
              // color: Colors.black12,
              image: DecorationImage(
                  image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover),
            ),
          ),
         
          const Positioned(
            top: 210,
            right: 10,
            child: SizedBox(
              width: 230,
              height: 60,
              
                child: Text(
                  
                  'Kumaranallur Karthiyani Devi Temple ',
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
            top: 263,
            right: 30,
            child: Button2(
              onpressed: null,
              txt: 'Follow',
            ),
          ),
          Positioned(
            top: 206,
            left: 30,
            child: Container(
              height: 95,
              width: 80,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/pi.jpg'), fit: BoxFit.cover),
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
