import 'package:flutter/material.dart';

class AboutRow extends StatelessWidget {
  final String txt;
  final IconData icon;
  final String? title;

  const AboutRow({Key? key, required this.icon, required this.txt, this.title})
      : super(key: key);

  Text getText() {
    return Text(
      txt,
      style: TextStyle(
        fontSize: 12,
        height: 1.2,
      ),
    );
  }

  Widget? getTextWithTitle() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 3),
        child: Text(title ?? '',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12)),
      ),
      getText()
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(icon, size: 18),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 2.5),
            child: title != null ? getTextWithTitle() : getText(),
          ),
        ),
      ]),
    );
  }
}
