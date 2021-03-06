import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
  late final ScrollController _scrollController;

  bool sliverPersistentHeader = false;
  int? value;


  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          sliverPersistentHeader = false;
        });
      } else {
        setState(() {
          sliverPersistentHeader = true;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var red = Colors.blue.shade50;
    var white = const Color(0xFFF2F2F2);
    return Scaffold(
      body: CustomScrollView(controller: _scrollController, slivers: [
        SliverPersistentHeader(
          pinned: true,
          delegate: CustomSliverAppBarDelegate(expandedHeight: 335),
        ),
        SliverPersistentHeader(
            pinned: sliverPersistentHeader ? true : false,
            delegate: PersistentButton(
              widget: ButtonTabs(
                children: [
                  ButtonIcon(
                    clr: value == 0 ? red : white,
                    onPressed: () {
                      setState(() {
                        value = 0;
                      });
                    },
                    icons: SvgPicture.asset('assets/icons/Update.svg'),
                    txt: 'Update',
                  ),
                  ButtonIcon(
                    clr: value == 1 ? red : Colors.white,
                    onPressed: () {
                      setState(() {
                        value = 1;
                      });
                    },
                    icons: SvgPicture.asset('assets/icons/Prathista.svg'),
                    txt: 'Deities',
                  ),
                  ButtonIcon(
                    clr: value == 2 ? red : Colors.white,
                    onPressed: () {
                      setState(() {
                        value = 2;
                      });
                    },
                    icons: SvgPicture.asset('assets/icons/Offering.svg'),
                    txt: 'Offerings',
                  ),
                  ButtonIcon(
                    clr: value == 3 ? red : Colors.white,
                    onPressed: () {
                      setState(() {
                        value = 3;
                      });
                    },
                    icons: SvgPicture.asset('assets/icons/Contact.svg'),
                    txt: 'About',
                  ),
                  ButtonIcon(
                    clr: value == 4 ? red : Colors.white,
                    onPressed: () {
                      setState(() {
                        value = 4;
                      });
                    },
                    icons: SvgPicture.asset('assets/icons/image-line.svg'),
                    txt: 'photos',
                  ),
                  ButtonIcon(
                    clr: value == 5 ? red : Colors.white,
                    onPressed: () {
                      setState(() {
                        value = 5;
                      });
                    },
                    icons: SvgPicture.asset('assets/icons/video.svg'),
                    txt: 'videos',
                  ),
                  const SizedBox(
                    width: 15,
                  )
                ],
              ),
            ),
            ),
        SliverToBoxAdapter(
          child: SingleChildScrollView(
            child: Column(
              children: [
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

class PersistentButton extends SliverPersistentHeaderDelegate {
  final Widget widget;
  PersistentButton({required this.widget});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return widget;
  }

  @override
  double get maxExtent => 110;

  @override
  double get minExtent => 110;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
