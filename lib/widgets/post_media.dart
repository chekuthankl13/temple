import 'package:flutter/material.dart';

class PostMedia extends StatelessWidget {
  final Widget child;
  const PostMedia({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('you tap the post'),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: AspectRatio(
          aspectRatio: 4 / 3,
          child: child,
        ),
      ),
    );
  }
}
