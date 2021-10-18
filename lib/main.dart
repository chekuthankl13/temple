import 'package:flutter/material.dart';
import 'package:temple/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temple',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'KumbhSans',
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.grey[50]),
        primaryColor: const Color(0XFF003870),
      ),
      home: const MyHomePage(),
    );
  }
}
