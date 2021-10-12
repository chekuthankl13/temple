import 'package:flutter/material.dart';
import 'package:temple/sections/about.dart';
import 'package:temple/sections/buttontab.dart';
import 'package:temple/sections/deties.dart';
import 'package:temple/sections/header.dart';
import 'package:temple/sections/offerings.dart';
import 'package:temple/sections/photos.dart';
import 'package:temple/sections/update.dart';
import 'package:temple/sections/videos.dart';

import 'package:temple/widgets/Buttons/icons.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(slivers: [
        SliverPersistentHeader(
          pinned: true,
          // floating: true,

          delegate: CustomSliverAppBarDelegate(expandedHeight: 340),
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ButtonTabs(
                  children: [
                    ButtonIcon(
                      onPressed: () {
                        setState(() {
                          value = 0;
                        });
                      },
                      icons: Icons.update,
                      txt: 'Update',
                    ),
                    ButtonIcon(
                      onPressed: () {
                        setState(() {
                          value = 1;
                        });
                      },
                      icons: Icons.home_filled,
                      txt: 'Deties',
                    ),
                    ButtonIcon(
                      onPressed: () {
                        setState(() {
                          value = 2;
                        });
                      },
                      icons: Icons.monetization_on_outlined,
                      txt: 'Offerings',
                    ),
                    ButtonIcon(
                      onPressed: () {
                        setState(() {
                          value = 3;
                        });
                      },
                      icons: Icons.search,
                      txt: 'About',
                    ),
                    ButtonIcon(
                      onPressed: () {
                        setState(() {
                          value = 4;
                        });
                      },
                      icons: Icons.photo,
                      txt: 'photos',
                    ),
                    ButtonIcon(
                      onPressed: () {
                        setState(() {
                          value = 5;
                        });
                      },
                      icons: Icons.video_collection,
                      txt: 'videos',
                    ),
                  ],
                ),
                divide(),
                value == 0
                    ? const Updates()
                    : value == 1
                        ? const Deties()
                        : value == 2
                            ? const Offerings()
                            : value == 3
                                ? const About()
                                : value == 4
                                    ? const Photo()
                                    : value ==5
                                    ? const Videos()
                                    : const Updates()
              ],
            ),
          ),
        ),
      ]),
    );
  }

  SizedBox divide() => const SizedBox(
        height: 30,
      );
}

class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  double expandedHeight;
  CustomSliverAppBarDelegate({required this.expandedHeight});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [buildAppBar(shrinkOffset), buildBg(shrinkOffset)],
    );
  }

  Widget buildAppBar(double shrinkOffset) => Opacity(
        opacity: appear(shrinkOffset),
        child: AppBar(
          backgroundColor: Colors.black,
          title:   const Text(
                'Kumaranallur Karthiyani  Devi  Temple',
                // softWrap: true,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            
          
        ),
      );

  @override
  double get maxExtent => 330;

  @override
  double get minExtent => kToolbarHeight + 30;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  double appear(double shrinkOffset) => shrinkOffset / expandedHeight;

  double disappear(double shrinkOffset) => 1 - shrinkOffset / expandedHeight;

  Widget buildBg(double shrinkOffset) => Opacity(
        opacity: disappear(shrinkOffset),
        child: const Header(),
      );
}
