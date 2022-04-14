import 'package:flutter/material.dart';
import 'package:thaanu_portfolio/global_variables.dart' as globals;
import 'package:thaanu_portfolio/sections/projects.dart';
import 'package:thaanu_portfolio/widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _scrollController = ScrollController();
  double? height, width;
  double _currectScrollPosition = 0;
  List<double?> projectsHeight = [];

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
      } else if (_currectScrollPosition > 5200) {
        setState(() {
          projectsHeight[2] = 0;
        });
      } else {
        setState(() {
          projectsHeight[2] = MediaQuery.of(context).size.height;
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
    }

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Projects(
            projectsHeight: projectsHeight,
            currectScrollPosition: _currectScrollPosition,
          ),
          
          AnimatedOpacity(
            duration: const Duration(milliseconds: 100),
            opacity: (height == 0) ? 0 : 1,
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 100),
                        margin: const EdgeInsets.all(4),
                        height: height,
                        width: width,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: const Color(0xff0B99FF),
                          ),
                          color: Colors.white,
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: FittedBox(
                          fit: BoxFit.none,
                          child: SingleChildScrollView(
                            reverse: true,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              reverse: true,
                              child: Container(
                                padding: const EdgeInsets.all(60),
                                width: MediaQuery.of(context).size.width * 0.7,
                                height:
                                    MediaQuery.of(context).size.height * 0.5,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: 'Hello there,\n',
                                        children: [
                                          const TextSpan(text: 'I\'m '),
                                          TextSpan(
                                            text: 'Thaanu Perera',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              color: globals.mainColor,
                                              fontSize: 80,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                        style: const TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 80,
                                          fontWeight: FontWeight.w700,
                                          height: 1.1,
                                        ),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(height: 20),
                                    const Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 26,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 100),
                        width: (width! > 30) ? width! + 10 : 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: const Color(0xff0B99FF),
                                ),
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: const Color(0xff0B99FF),
                                ),
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 2,
                                  color: const Color(0xff0B99FF),
                                ),
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 100),
                            width: (width! > 30) ? width! + 10 : 30,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                      color: const Color(0xff0B99FF),
                                    ),
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                      color: const Color(0xff0B99FF),
                                    ),
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                      color: const Color(0xff0B99FF),
                                    ),
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Scrollbar(
            controller: _scrollController,
            child: SingleChildScrollView(
              controller: _scrollController,
              physics: const ClampingScrollPhysics(),
              child: SizedBox(
                height: 7000,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
          Positioned.fill(
            child: AnimatedOpacity(
                duration: const Duration(milliseconds: 300),
                opacity: (height == 0) ? 0 : 1,
                child: Navbar(
                  projectsOnTap: () {
                    _scrollController.animateTo(2000,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeIn);
                  },
                )),
          ),
        ],
      ),
    );
  }
}
