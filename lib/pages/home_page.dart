import 'package:flutter/material.dart';
import 'package:temple/assets/ticons_icons.dart';
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
    var red = Colors.blue.shade50;
    var white = Colors.white;
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
                      clr: value == 0 ? red : white,
                      onPressed: () {
                        setState(() {
                          value = 0;
                        });
                      },
                      icons:Ticons.updates,
                      txt: 'Update',
                    ),
                    ButtonIcon(
                      clr: value == 1 ? red : Colors.white,
                      onPressed: () {
                        setState(() {
                          value = 1;
                        });
                      },
                      icons:Ticons.deities,
                      txt: 'Deties',
                    ),
                    ButtonIcon(
                      clr: value == 2 ? red : Colors.white,
                      onPressed: () {
                        setState(() {
                          value = 2;
                        });
                      },
                      icons:Ticons.offering,
                      txt: 'Offerings',
                    ),
                    ButtonIcon(
                      clr: value == 3 ? red : Colors.white,
                      onPressed: () {
                        setState(() {
                          value = 3;
                        });
                      },
                      icons:Ticons.about,
                      txt: 'About',
                    ),
                    ButtonIcon(
                      clr: value == 4 ? red : Colors.white,
                      onPressed: () {
                        setState(() {
                          value = 4;
                        });
                      },
                      icons: Ticons.gallery,
                      txt: 'photos',
                    ),
                    ButtonIcon(
                      clr: value == 5 ? red : Colors.white,
                      onPressed: () {
                        setState(() {
                          value = 5;
                        });
                      },
                      icons: Ticons.gallery,
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
