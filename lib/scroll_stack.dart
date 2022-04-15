import 'package:flutter/material.dart';
import 'package:thaanu_portfolio/sections/home.dart';
import 'package:thaanu_portfolio/sections/portfolio.dart';
import 'package:thaanu_portfolio/sections/projects.dart';
import 'package:thaanu_portfolio/widgets/navbar.dart';

class ScrollStack extends StatefulWidget {
  const ScrollStack({Key? key}) : super(key: key);

  @override
  State<ScrollStack> createState() => _ScrollStackState();
}

class _ScrollStackState extends State<ScrollStack> {
  final ScrollController _scrollController = ScrollController();
  double? height, width;
  double _currectScrollPosition = 0, portfolioScale = 0;
  List<double?> projectsHeight = [], portfolioHeight = [];

  @override
  void initState() {
    super.initState();
    scrollController();
  }

  scrollController() {
    _scrollController.addListener(() {
      _currectScrollPosition =
          _scrollController.position.pixels; //this is the line
      // Home Section
      if (_currectScrollPosition <= 1500) {
        setState(() {
          height = ((MediaQuery.of(context).size.height * 0.5) -
              (_currectScrollPosition / 1500) *
                  MediaQuery.of(context).size.height *
                  0.5);
          width = ((MediaQuery.of(context).size.width * 0.7) -
              (_currectScrollPosition / 1500) *
                  MediaQuery.of(context).size.width *
                  0.7);
        });
      } else {
        setState(() {
          height = 0;
          width = 0;
        });
      }

      // Projects Section - 1
      if (_currectScrollPosition > 2000 && _currectScrollPosition <= 2800) {
        setState(() {
          projectsHeight[0] = MediaQuery.of(context).size.height -
              (((_currectScrollPosition - 2000) / 800) *
                  MediaQuery.of(context).size.height);
        });
      } else if (_currectScrollPosition > 2800 &&
          _currectScrollPosition < 3200) {
        setState(() {
          projectsHeight[0] = 0;
        });
      } else if (_currectScrollPosition > 3200 &&
          _currectScrollPosition < 4000) {
        setState(() {
          projectsHeight[0] = -(((_currectScrollPosition - 3200) / 3200) *
              MediaQuery.of(context).size.height);
        });
      } else {
        setState(() {
          projectsHeight[0] = MediaQuery.of(context).size.height;
        });
      }

      // Projects Section - 2
      if (_currectScrollPosition > 3200 && _currectScrollPosition <= 4000) {
        setState(() {
          projectsHeight[1] = MediaQuery.of(context).size.height -
              (((_currectScrollPosition - 3200) / 800) *
                  MediaQuery.of(context).size.height);
        });
      } else if (_currectScrollPosition > 4000 &&
          _currectScrollPosition < 4400) {
        setState(() {
          projectsHeight[1] = 0;
        });
      } else if (_currectScrollPosition > 4400 &&
          _currectScrollPosition < 5200) {
        setState(() {
          projectsHeight[1] = -(((_currectScrollPosition - 4400) / 3200) *
              MediaQuery.of(context).size.height);
        });
      } else {
        setState(() {
          projectsHeight[1] = MediaQuery.of(context).size.height;
        });
      }

      // Projects Section - 3
      if (_currectScrollPosition > 4400 && _currectScrollPosition <= 5200) {
        setState(() {
          projectsHeight[2] = MediaQuery.of(context).size.height -
              (((_currectScrollPosition - 4400) / 800) *
                  MediaQuery.of(context).size.height);
        });
      } else if (_currectScrollPosition > 5200 &&
          _currectScrollPosition < 5600) {
        setState(() {
          projectsHeight[2] = 0;
        });
      } else if (_currectScrollPosition > 5600 &&
          _currectScrollPosition < 6400) {
        setState(() {
          projectsHeight[2] = -(((_currectScrollPosition - 5600) / 3200) *
              MediaQuery.of(context).size.height);
        });
      } else {
        setState(() {
          projectsHeight[2] = MediaQuery.of(context).size.height;
        });
      }

      // Portfolio Title
      if (_currectScrollPosition > 5600 && _currectScrollPosition <= 6400) {
        setState(() {
          portfolioHeight[0] = MediaQuery.of(context).size.height -
              (((_currectScrollPosition - 5600) / 800) *
                  MediaQuery.of(context).size.height);
        });
      } else if (_currectScrollPosition > 6400) {
        setState(() {
          portfolioHeight[0] = 0;
        });
      } else {
        setState(() {
          portfolioHeight[0] = MediaQuery.of(context).size.height;
        });
      }

      // Portfolio Title
      if (_currectScrollPosition > 6800 && _currectScrollPosition <= 7600) {
        setState(() {
          portfolioScale = ((_currectScrollPosition - 6800) / 800);
        });
      } else if (_currectScrollPosition > 7600) {
        setState(() {
          portfolioScale = 1;
        });
      } else {
        setState(() {
          portfolioScale = 0;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (width == null || height == null) {
      height = MediaQuery.of(context).size.height * 0.5;
      width = MediaQuery.of(context).size.width * 0.7;
      projectsHeight.addAll([
        MediaQuery.of(context).size.height,
        MediaQuery.of(context).size.height,
        MediaQuery.of(context).size.height
      ]);
      portfolioHeight.add(MediaQuery.of(context).size.height);
    }

    return Scaffold(
      body: Scrollbar(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              toolbarHeight: MediaQuery.of(context).size.height,
              expandedHeight: 10000,
              backgroundColor: Colors.white,
              flexibleSpace: LayoutBuilder(
                builder: (context, constraints) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Projects(
                          projectsHeight: projectsHeight,
                          currectScrollPosition: _currectScrollPosition,
                        ),
                        Portfolio(
                          portfolioHeight: portfolioHeight,
                          portfolioScale: portfolioScale,
                        ),
                        Home(
                          width: width!,
                          height: height!,
                        ),
                        Positioned.fill(
                          child: AnimatedOpacity(
                            duration: const Duration(milliseconds: 300),
                            opacity: (height == 0) ? 0 : 1,
                            child: Navbar(
                              projectsOnTap: () {
                                _scrollController.animateTo(2000,
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.easeIn);
                              },
                              portfolioOnTap: () {
                                _scrollController.animateTo(6400,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeIn);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
