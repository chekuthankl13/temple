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

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int value = 0;
  late final ScrollController _scrollController;

  bool sliverPersistentHeader = false;

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1))
      ..forward();
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          sliverPersistentHeader = false;
          if (sliverPersistentHeader == false) {
            _controller = AnimationController(
                vsync: this, duration: const Duration(milliseconds: 500))
              ..forward();
            _animation = CurvedAnimation(
                parent: _controller, curve: Curves.fastOutSlowIn);
            print('false');
          }
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
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(controller: _scrollController, slivers: [
        SliverPersistentHeader(
          pinned: true,
          delegate: CustomSliverAppBarDelegate(expandedHeight: 350),
        ),
        SliverPersistentHeader(
          pinned: sliverPersistentHeader ? true : false,
          delegate: PersistentButton(
            widget: FadeTransition(
              opacity: _animation,
              child: ButtonTabs(
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

class PersistentButton extends SliverPersistentHeaderDelegate {
  final Widget widget;
  PersistentButton({required this.widget});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return widget;
  }

  @override
  double get maxExtent => 85;

  @override
  double get minExtent => 85;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
