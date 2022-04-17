import 'package:flutter/material.dart';
import 'package:thaanu_portfolio/global_variables.dart' as globals;

class Home extends StatelessWidget {
  final double width, height;
  const Home({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
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
                          padding: EdgeInsets.all(
                              ((MediaQuery.of(context).size.width > 576)
                                  ? 60
                                  : 30)),
                          width: MediaQuery.of(context).size.width *
                              ((MediaQuery.of(context).size.width > 768)
                                  ? 0.7
                                  : 0.9),
                          height: MediaQuery.of(context).size.height *
                              ((MediaQuery.of(context).size.width > 576)
                                  ? 0.6
                                  : 0.8),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              (MediaQuery.of(context).size.width > 576)
                                  ? FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: RichText(
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
                                    )
                                  : FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: RichText(
                                        text: TextSpan(
                                          text: 'Hello there,\n',
                                          children: [
                                            const TextSpan(text: 'I\'m\n'),
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
                                    ),
                              const SizedBox(height: 20),
                              (MediaQuery.of(context).size.width > 576)
                                  ? FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        'I\'m a UI UX designer based in Sri Lanka who loves to create\nsimple designs that inspires people...\nand I do mobile application development as well.',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: ((MediaQuery.of(context)
                                                      .size
                                                      .width >
                                                  576)
                                              ? 26
                                              : 20),
                                          fontWeight: FontWeight.w300,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    )
                                  : SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: const Text(
                                        'I\'m a UI UX designer based in Sri Lanka who loves to create simple designs that inspires people... and I do mobile application development as well.',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
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
                  width: (width > 30) ? width + 10 : 30,
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
                      width: (width > 30) ? width + 10 : 30,
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
    );
  }
}
