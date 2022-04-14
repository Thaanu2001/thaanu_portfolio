import 'package:flutter/material.dart';
import 'package:thaanu_portfolio/global_variables.dart' as globals;
import 'package:thaanu_portfolio/widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _scrollController = ScrollController();
  double? height,
      width,
      projectsScale = 1,
      projectsAlignment = 0,
      projectsHeight;

  @override
  void initState() {
    super.initState();
    scrollController();
  }

  scrollController() {
    _scrollController.addListener(() {
      var _currectScrollPosition =
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

      // Projects Section
      if (_currectScrollPosition > 1800 && _currectScrollPosition <= 2600) {
        setState(() {
          projectsHeight = MediaQuery.of(context).size.height -
              (((_currectScrollPosition - 1800) / 800) *
                  MediaQuery.of(context).size.height);
          // projectsScale = (1 - ((_currectScrollPosition - 1500) / 800) * 0.4);
          // projectsAlignment = (0 - ((_currectScrollPosition - 1500) / 800) * 2);
        });
      } else if (_currectScrollPosition > 2600) {
        setState(() {
          projectsHeight = 0;
        });
        //   projectsScale = 0.6;
        //   projectsAlignment = -1;
      } else {
        setState(() {
          projectsHeight = MediaQuery.of(context).size.height;
        });
        //   projectsScale = 1;
        //   projectsAlignment = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (width == null || height == null) {
      height = MediaQuery.of(context).size.height * 0.5;
      width = MediaQuery.of(context).size.width * 0.7;
      projectsHeight = MediaQuery.of(context).size.height;
    }

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              alignment: Alignment(0, projectsAlignment!),
              child: AnimatedScale(
                duration: const Duration(milliseconds: 100),
                scale: projectsScale!,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text(
                        'Projects',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 80,
                          fontWeight: FontWeight.w700,
                          color: globals.mainColor,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Container(
                        alignment: Alignment.bottomRight,
                        margin: const EdgeInsets.only(
                          bottom: 8,
                        ),
                        child: Image.asset(
                          'lib/assets/images/cursor.png',
                          height: 35,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: projectsHeight,
            child: Align(
              alignment: const Alignment(-1, -2),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.black,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height,
                    color: Colors.grey[100],
                  ),
                ],
              ),
            ),
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
              child: SizedBox(
                height: 5000,
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
                    _scrollController.animateTo(2600,
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
