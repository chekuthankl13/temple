import 'package:flutter/material.dart';
import 'package:temple/widgets/Buttons/button3.dart';
import 'package:temple/widgets/post_media.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Post extends StatefulWidget {
  final Image avatar;
  final String name;
  final String time;
  final String like;
  final String comment;
  final String? img;
  final String? txt;
  final String? videoUrl;

  const Post(
      {required this.avatar,
      required this.name,
      required this.time,
      required this.like,
      required this.comment,
      this.txt,
      this.videoUrl,
      this.img,
      Key? key})
      : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  late YoutubePlayerController controller = YoutubePlayerController(
    initialVideoId: widget.videoUrl!,
    // iLnmTe5Q2Qw
    flags: const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.05,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(top: 25),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black12.withOpacity(0.05),
            spreadRadius: 1.5,
            blurRadius: 4,
            offset: Offset(3.0, 3.0))
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
                          image: widget.avatar.image, fit: BoxFit.cover),
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
                        width: 250,
                        child: Text(
                          widget.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.time,
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
          if (widget.txt != null) ...[
            space(),
            Text(widget.txt!,
                style: TextStyle(
                    fontSize: 14, color: Colors.grey[800], height: 1.4))
          ],
          if (widget.img != null) ...[
            space(),
            PostMedia(
                child: Image.asset(
              widget.img!,
              fit: BoxFit.cover,
            ))
          ],
          if (widget.videoUrl != null) ...[
            space(),
            PostMedia(
              child: YoutubePlayerBuilder(
                player: YoutubePlayer(
                  controller: controller,
                  showVideoProgressIndicator: true,
                  aspectRatio: 4 / 3,
                ),
                builder: (context, player) {
                  return Column(
                    children: [player],
                  );
                },
              ),
            )
          ],
          space(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 15,
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
                  Text(widget.like),
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
                  Text(widget.comment),
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
