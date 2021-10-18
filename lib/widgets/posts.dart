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
  final bool video;

  const Posts(
      {required this.avatar,
      required this.name,
      required this.time,
      required this.txt,
      required this.img,
      required this.like,
      required this.comment,
      this.video = false,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.05,
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
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: NetworkImage(avatar), fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 6,
                      ),
                      SizedBox(
                        width: 170,
                        child: Text(
                          name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        time,
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(
                Icons.share,
                color: Colors.black26,
              )
            ],
          ),
          space(),
          Text(
            txt,
          ),
          space(),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: AspectRatio(
                aspectRatio: 4 / 3,
                child: video
                    ? Image.asset(
                        img,
                        fit: BoxFit.cover,
                      )
                    : Image.network(
                        img,
                        fit: BoxFit.cover,
                      )),
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
                  Button3(onpressed: null, txt: 'Book Offering'),
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
