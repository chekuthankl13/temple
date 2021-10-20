import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
  int value = 0;

  @override
  Widget build(BuildContext context) {
    var red = Colors.blue.shade50;
    var white = const Color(0xFFF5F5F5);
    return Scaffold(
      // backgroundColor: Colors.amber,
      body: CustomScrollView(slivers: [
        SliverPersistentHeader(
          pinned: true,
          delegate: CustomSliverAppBarDelegate(expandedHeight: 350),
        ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            child: Column(
              children: [
                ButtonTabs(
                  children: [
                    ButtonIcon(
                      isPressed: value == 0,
                      onPressed: () {
                        setState(() {
                          value = 0;
                        });
                      },
                      icons: SvgPicture.asset('assets/icons/Update.svg'),
                      txt: 'Updates',
                    ),
                    ButtonIcon(
                      isPressed: value == 1,
                      onPressed: () {
                        setState(() {
                          value = 1;
                        });
                      },
                      icons: SvgPicture.asset('assets/icons/Prathista.svg'),
                      txt: 'Deities',
                    ),
                    ButtonIcon(
                      isPressed: value == 2,
                      onPressed: () {
                        setState(() {
                          value = 2;
                        });
                      },
                      icons: SvgPicture.asset('assets/icons/Offering.svg'),
                      txt: 'Offerings',
                    ),
                    ButtonIcon(
                      isPressed: value == 3,
                      onPressed: () {
                        setState(() {
                          value = 3;
                        });
                      },
                      icons: SvgPicture.asset('assets/icons/Contact.svg'),
                      txt: 'About',
                    ),
                    ButtonIcon(
                      isPressed: value == 4,
                      onPressed: () {
                        setState(() {
                          value = 4;
                        });
                      },
                      icons: SvgPicture.asset('assets/icons/Gallery.svg'),
                      txt: 'Photos',
                    ),
                    ButtonIcon(
                      isPressed: value == 5,
                      onPressed: () {
                        setState(() {
                          value = 5;
                        });
                      },
                      icons: SvgPicture.asset('assets/icons/Gallery.svg'),
                      txt: 'Videos',
                    ),
                    const SizedBox(
                      width: 15,
                    )
                  ],
                ),
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
                                    : value == 5
                                        ? const Videos()
                                        : const Updates()
              ],
            ),
          ),
        ),
      ]),
    );
  }
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
          backgroundColor: const Color(0XFF003870),
          title: const Text(
            'Kumaranallur Karthiyani  Devi  Temple',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      );

  @override
  double get maxExtent => 345;

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
