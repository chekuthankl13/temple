import 'package:flutter/material.dart';
import 'package:temple/widgets/Buttons/button3.dart';

class Posts extends StatelessWidget {
  final String avatar;
  final String name;
  final String time;
  final String txt;
  final String img;
  final String like;
  final String comment;

  const Posts(
      {required this.avatar,
      required this.name,
      required this.time,
      required this.txt,
      required this.img,
      required this.like,
      required this.comment,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width /1.05,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
          color: Colors.black12,
        )
      ], color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Stack(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(avatar), fit: BoxFit.cover),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 5,
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.white, width: 1.5),
                            ),
                            child: const Icon(
                              Icons.place,
                              size: 10,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  space(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 170,
                        child: Text(
                          name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        time,
                        style: const TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
              const Button3(onpressed: null, txt: 'Book Offering')
            ],
          ),
          space(),
          Text(
            txt,
          ),
          space(),
         
          
             AspectRatio(aspectRatio: 4/3,
            child: Image.network(img, fit: BoxFit.cover,),),
          
          space(), 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      // ignore: avoid_print
                      print('clicked');
                    },
                    child: const Icon(
                      Icons.thumb_up_alt_outlined,
                      size: 20,
                      color: Colors.black26,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(like),
                  const SizedBox(
                    width: 25,
                  ),
                  const Icon(
                    Icons.chat_bubble_outline,
                    size: 20,
                    color: Colors.black26,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(comment),
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.file_upload_outlined,
                    size: 20,
                    color: Colors.black26,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  SizedBox space() {
    return const SizedBox(
      height: 15,
    );
  }
}
