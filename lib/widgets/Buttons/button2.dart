import 'package:flutter/material.dart';

class Button2 extends StatelessWidget {
  final void Function()? onpressed;
  final String txt;
  final bool follow;
  const Button2({Key? key, required this.onpressed, required this.txt, this.follow = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width:100,
    
      decoration: BoxDecoration(
        border: Border.all(color:  const Color.fromRGBO(33, 48, 197 , 1)),
        color:Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: const [BoxShadow(color: Colors.black),BoxShadow(color: Colors.white)],
        
      ),
      child:InkWell(
        onTap: (){},
        child: Row(
          children: const [
            SizedBox(width: 5,),
            Icon(Icons.people, size: 15,),
            SizedBox(width: 5,),
            Text('5', style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
           SizedBox(width: 5,),
           Text('FOLLOW', style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Color.fromRGBO(33, 48, 197 , 1)),)
          ],
        ),
      ),
    );


 
  }
}
