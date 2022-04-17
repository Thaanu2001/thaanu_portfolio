import 'package:flutter/material.dart';
import 'package:thaanu_portfolio/sections/home.dart';
import 'package:thaanu_portfolio/sections/letstalk.dart';
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
  double? height, width, portfolioHeight;
  double _currectScrollPosition = 0, experienceScale = 1;
  List<double?> projectsHeight = [],
      experienceHeight = [],
      portfolioScale = [0, 0];

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
          height = ((MediaQuery.of(context).size.height *
                  ((MediaQuery.of(context).size.width > 576) ? 0.5 : 0.74)) -
              (_currectScrollPosition / 1500) *
                  MediaQuery.of(context).size.height *
                  ((MediaQuery.of(context).size.width > 576) ? 0.5 : 0.74));
          width = ((MediaQuery.of(context).size.width *
                  ((MediaQuery.of(context).size.width > 768) ? 0.7 : 0.85)) -
              (_currectScrollPosition / 1500) *
                  MediaQuery.of(context).size.width *
                  ((MediaQuery.of(context).size.width > 768) ? 0.7 : 0.85));
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

      if (MediaQuery.of(context).size.width > 768) {
        // Portfolio Title
        if (_currectScrollPosition > 5600 && _currectScrollPosition <= 6400) {
          setState(() {
            portfolioHeight = MediaQuery.of(context).size.height -
                (((_currectScrollPosition - 5600) / 800) *
                    MediaQuery.of(context).size.height);
          });
        } else if (_currectScrollPosition > 6400) {
          setState(() {
            portfolioHeight = 0;
          });
        } else {
          setState(() {
            portfolioHeight = MediaQuery.of(context).size.height;
          });
        }

        // Portfolio Content
        if (_currectScrollPosition > 6800 && _currectScrollPosition <= 7600) {
          setState(() {
            portfolioScale[0] = ((_currectScrollPosition - 6800) / 800);
          });
        } else if (_currectScrollPosition > 7600) {
          setState(() {
            portfolioScale[0] = 1;
          });
        } else {
          setState(() {
            portfolioScale[0] = 0;
          });
        }

        // Experience Title - Reveal
        if (_currectScrollPosition > 8200 && _currectScrollPosition <= 9000) {
          setState(() {
            experienceHeight[0] = MediaQuery.of(context).size.height -
                (((_currectScrollPosition - 8200) / 800) *
                    MediaQuery.of(context).size.height);
          });
        } else if (_currectScrollPosition > 9000) {
          setState(() {
            experienceHeight[0] = 0;
          });
        } else {
          setState(() {
            experienceHeight[0] = MediaQuery.of(context).size.height;
          });
        }

        // Experience Title - Expand
        if (_currectScrollPosition > 9200 &&
            _currectScrollPosition <= 10000 &&
            ((_currectScrollPosition - 9200) / 800) * 10 > 1) {
          setState(() {
            experienceScale = ((_currectScrollPosition - 9200) / 800) * 10;
          });
        } else if (_currectScrollPosition > 10000) {
          setState(() {
            experienceScale = 10;
          });
        } else {
          setState(() {
            experienceScale = 1;
          });
        }

        // Experience Title - Center Box
        if (_currectScrollPosition > 9600 && _currectScrollPosition <= 10400) {
          setState(() {
            experienceHeight[1] = (((_currectScrollPosition - 9600) / 800) *
                MediaQuery.of(context).size.height);
          });
        } else if (_currectScrollPosition > 10400) {
          setState(() {
            experienceHeight[1] = MediaQuery.of(context).size.height;
          });
        } else {
          setState(() {
            experienceHeight[1] = 0;
          });
        }
      }
      // Mobile View ------------------------------------------------------------------------------------------
      else {
        // Projects Section - 4
        if (_currectScrollPosition > 5600 && _currectScrollPosition <= 6400) {
          setState(() {
            projectsHeight[3] = MediaQuery.of(context).size.height -
                (((_currectScrollPosition - 5600) / 800) *
                    MediaQuery.of(context).size.height);
          });
        } else if (_currectScrollPosition > 6400 &&
            _currectScrollPosition < 6800) {
          setState(() {
            projectsHeight[3] = 0;
          });
        } else if (_currectScrollPosition > 6800 &&
            _currectScrollPosition < 7600) {
          setState(() {
            projectsHeight[3] = -(((_currectScrollPosition - 6800) / 3200) *
                MediaQuery.of(context).size.height);
          });
        } else {
          setState(() {
            projectsHeight[3] = MediaQuery.of(context).size.height;
          });
        }

        // Projects Section - 5
        if (_currectScrollPosition > 6800 && _currectScrollPosition <= 7600) {
          setState(() {
            projectsHeight[4] = MediaQuery.of(context).size.height -
                (((_currectScrollPosition - 6800) / 800) *
                    MediaQuery.of(context).size.height);
          });
        } else if (_currectScrollPosition > 7600 &&
            _currectScrollPosition < 8000) {
          setState(() {
            projectsHeight[4] = 0;
          });
        } else if (_currectScrollPosition > 8000 &&
            _currectScrollPosition < 8800) {
          setState(() {
            projectsHeight[4] = -(((_currectScrollPosition - 8000) / 3200) *
                MediaQuery.of(context).size.height);
          });
        } else {
          setState(() {
            projectsHeight[4] = MediaQuery.of(context).size.height;
          });
        }

        // Projects Section - 6
        if (_currectScrollPosition > 8000 && _currectScrollPosition <= 8800) {
          setState(() {
            projectsHeight[5] = MediaQuery.of(context).size.height -
                (((_currectScrollPosition - 8000) / 800) *
                    MediaQuery.of(context).size.height);
          });
        } else if (_currectScrollPosition > 8800 &&
            _currectScrollPosition < 9200) {
          setState(() {
            projectsHeight[5] = 0;
          });
        } else if (_currectScrollPosition > 9200 &&
            _currectScrollPosition < 10000) {
          setState(() {
            projectsHeight[5] = -(((_currectScrollPosition - 9200) / 3200) *
                MediaQuery.of(context).size.height);
          });
        } else {
          setState(() {
            projectsHeight[5] = MediaQuery.of(context).size.height;
          });
        }

        // Portfolio Title
        if (_currectScrollPosition > 9200 && _currectScrollPosition <= 10000) {
          setState(() {
            portfolioHeight = MediaQuery.of(context).size.height -
                (((_currectScrollPosition - 9200) / 800) *
                    MediaQuery.of(context).size.height);
          });
        } else if (_currectScrollPosition > 10000) {
          setState(() {
            portfolioHeight = 0;
          });
        } else {
          setState(() {
            portfolioHeight = MediaQuery.of(context).size.height;
          });
        }

        // Portfolio Content - 1
        if (_currectScrollPosition > 10400 && _currectScrollPosition <= 11200) {
          setState(() {
            portfolioScale[0] = ((_currectScrollPosition - 10400) / 800);
          });
        } else if (_currectScrollPosition > 11200) {
          setState(() {
            portfolioScale[0] = 1;
          });
        } else {
          setState(() {
            portfolioScale[0] = 0;
          });
        }

        // Portfolio Content - 1
        if (_currectScrollPosition > 11800 && _currectScrollPosition <= 12600) {
          setState(() {
            portfolioScale[1] = ((_currectScrollPosition - 11800) / 800);
          });
        } else if (_currectScrollPosition > 12600) {
          setState(() {
            portfolioScale[1] = 1;
          });
        } else {
          setState(() {
            portfolioScale[1] = 0;
          });
        }

        // Experience Title - Reveal
        if (_currectScrollPosition > 13200 && _currectScrollPosition <= 14000) {
          setState(() {
            experienceHeight[0] = MediaQuery.of(context).size.height -
                (((_currectScrollPosition - 13200) / 800) *
                    MediaQuery.of(context).size.height);
          });
        } else if (_currectScrollPosition > 13200) {
          setState(() {
            experienceHeight[0] = 0;
          });
        } else {
          setState(() {
            experienceHeight[0] = MediaQuery.of(context).size.height;
          });
        }

        // Experience Title - Expand
        if (_currectScrollPosition > 14200 &&
            _currectScrollPosition <= 15000 &&
            ((_currectScrollPosition - 14200) / 800) * 10 > 1) {
          setState(() {
            experienceScale = ((_currectScrollPosition - 14200) / 800) * 10;
          });
        } else if (_currectScrollPosition > 15000) {
          setState(() {
            experienceScale = 10;
          });
        } else {
          setState(() {
            experienceScale = 1;
          });
        }

        // Experience Title - Center Box
        if (_currectScrollPosition > 14600 && _currectScrollPosition <= 15400) {
          setState(() {
            experienceHeight[1] = (((_currectScrollPosition - 14600) / 800) *
                MediaQuery.of(context).size.height);
          });
        } else if (_currectScrollPosition > 15400) {
          setState(() {
            experienceHeight[1] = MediaQuery.of(context).size.height;
          });
        } else {
          setState(() {
            experienceHeight[1] = 0;
          });
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (width == null || height == null) {
      height = MediaQuery.of(context).size.height *
          ((MediaQuery.of(context).size.width > 576) ? 0.6 : 0.74);
      width = MediaQuery.of(context).size.width *
          ((MediaQuery.of(context).size.width > 768) ? 0.7 : 0.85);
      projectsHeight.addAll([
        MediaQuery.of(context).size.height,
        MediaQuery.of(context).size.height,
        MediaQuery.of(context).size.height,
        MediaQuery.of(context).size.height,
        MediaQuery.of(context).size.height,
        MediaQuery.of(context).size.height
      ]);
      portfolioHeight = MediaQuery.of(context).size.height;
      experienceHeight.addAll([
        MediaQuery.of(context).size.height,
        0,
        MediaQuery.of(context).size.height
      ]);
    }

    return Scaffold(
      body: Scrollbar(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              toolbarHeight: MediaQuery.of(context).size.height,
              expandedHeight:
                  (MediaQuery.of(context).size.width > 768) ? 11500 : 16500,
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
                          portfolioHeight: portfolioHeight!,
                          portfolioScale: portfolioScale,
                        ),
                        LetsTalk(
                            letsTalkHeight: experienceHeight,
                            letsTalkScale: experienceScale),
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
                                _scrollController.animateTo(
                                    (MediaQuery.of(context).size.width > 768)
                                        ? 6400
                                        : 10400,
                                    duration: const Duration(seconds: 1),
                                    curve: Curves.easeIn);
                              },
                              talkOnTap: () {
                                _scrollController.animateTo(
                                    (MediaQuery.of(context).size.width > 768)
                                        ? 9200
                                        : 14200,
                                    duration:
                                        const Duration(milliseconds: 1200),
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
