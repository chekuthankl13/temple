import 'package:flutter/material.dart';
import 'package:temple/widgets/Buttons/button3.dart';

class Updates extends StatelessWidget {
  const Updates({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        posts(
          avatar: 'assets/pi.jpg',
          img: 'assets/bg.jpg',
          comment: '5',
          like: '100',
          name: 'Yammarakunlgara Sree Maha ganapathy ',
          time: '12 h',
          txt: 'festival of light and happy',
        ),
        space(),
        posts(
          avatar: 'assets/pi3.jpg',
          img: 'assets/bg.jpg',
          comment: '5',
          like: '100',
          name: 'Kumaranallur Karthiyani Devi Temple',
          time: '12 h',
          txt: 'i^m rich as ******',
        ),
      ],
    );
  }

  Container posts(
      {required String avatar,
      required String name,
      required String time,
      required String txt,
      required String img,
      required String like,
      required String comment}) {
    return Container(
      width: 330,
      padding: const EdgeInsets.all(15),
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
                            // color: Colors.red,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage(avatar), fit: BoxFit.cover),
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
              // const Button2(
              //   onpressed: null,
              //   txt: 'Book Oferring',
              // ),
              const Button3(onpressed: null, txt: 'Book Offering')
            ],
          ),
          space(),
          Text(
            txt,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          space(),
          Container(
            height: 140,
            width: 320,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
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
          )
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
