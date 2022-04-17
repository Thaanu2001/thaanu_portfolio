import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:thaanu_portfolio/global_variables.dart' as globals;

class Portfolio extends StatefulWidget {
  final List<double?> portfolioScale;
  final double portfolioHeight;
  const Portfolio(
      {Key? key, required this.portfolioScale, required this.portfolioHeight})
      : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<bool> portfolioOnHover = [false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: widget.portfolioHeight,
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Text(
                    'Portfolio',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize:
                          (MediaQuery.of(context).size.width > 576) ? 80 : 54,
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
        Positioned.fill(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            child: AnimatedScale(
              duration: const Duration(milliseconds: 100),
              scale: widget.portfolioScale[0]!,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(
                          (MediaQuery.of(context).size.width > 576) ? 40 : 20),
                      margin: const EdgeInsets.all(4),
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: const Color(0xff0B99FF),
                        ),
                        color: Colors.white,
                      ),
                      child: (MediaQuery.of(context).size.width > 576)
                          ? Column(
                              children: [
                                Flexible(
                                  child: Row(
                                    children: [
                                      Flexible(
                                        fit: FlexFit.tight,
                                        child: InkWell(
                                          child: AnimatedScale(
                                            duration: const Duration(
                                                milliseconds: 200),
                                            scale: (portfolioOnHover[0])
                                                ? 1.04
                                                : 1,
                                            child: Image.asset(
                                              'lib/assets/images/portfolio/image-1.gif',
                                              fit: BoxFit.cover,
                                              height: double.infinity,
                                              alignment: Alignment.center,
                                            ),
                                          ),
                                          onHover: (val) {
                                            if (val) {
                                              setState(() =>
                                                  portfolioOnHover[0] = true);
                                            } else {
                                              setState(() =>
                                                  portfolioOnHover[0] = false);
                                            }
                                          },
                                          onTap: () {
                                            js.context.callMethod('open', [
                                              'https://www.behance.net/gallery/118528863/Smoothie-Store-Mobile-Application-Concept'
                                            ]);
                                          },
                                        ),
                                      ),
                                      const SizedBox(width: 40),
                                      Flexible(
                                        fit: FlexFit.tight,
                                        child: InkWell(
                                          child: AnimatedScale(
                                            duration: const Duration(
                                                milliseconds: 200),
                                            scale: (portfolioOnHover[1])
                                                ? 1.04
                                                : 1,
                                            child: Image.asset(
                                              'lib/assets/images/portfolio/image-2.gif',
                                              fit: BoxFit.cover,
                                              height: double.infinity,
                                              alignment: Alignment.center,
                                            ),
                                          ),
                                          onHover: (val) {
                                            if (val) {
                                              setState(() =>
                                                  portfolioOnHover[1] = true);
                                            } else {
                                              setState(() =>
                                                  portfolioOnHover[1] = false);
                                            }
                                          },
                                          onTap: () {
                                            js.context.callMethod('open', [
                                              'https://www.behance.net/gallery/123321859/Event-Booking-Mobile-Application-Concept'
                                            ]);
                                          },
                                        ),
                                      ),
                                      const SizedBox(width: 40),
                                      Flexible(
                                        fit: FlexFit.tight,
                                        child: InkWell(
                                          child: AnimatedScale(
                                            duration: const Duration(
                                                milliseconds: 200),
                                            scale: (portfolioOnHover[2])
                                                ? 1.04
                                                : 1,
                                            child: Image.asset(
                                              'lib/assets/images/portfolio/image-3.jpg',
                                              fit: BoxFit.cover,
                                              height: double.infinity,
                                              alignment: Alignment.topCenter,
                                            ),
                                          ),
                                          onHover: (val) {
                                            if (val) {
                                              setState(() =>
                                                  portfolioOnHover[2] = true);
                                            } else {
                                              setState(() =>
                                                  portfolioOnHover[2] = false);
                                            }
                                          },
                                          onTap: () {
                                            js.context.callMethod('open', [
                                              'https://www.behance.net/gallery/107873011/Car-Dealership-Mobile-Application-Concept'
                                            ]);
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 40),
                                Flexible(
                                  child: Row(
                                    children: [
                                      Flexible(
                                        fit: FlexFit.tight,
                                        child: InkWell(
                                          child: AnimatedScale(
                                            duration: const Duration(
                                                milliseconds: 200),
                                            scale: (portfolioOnHover[3])
                                                ? 1.04
                                                : 1,
                                            child: Image.asset(
                                              'lib/assets/images/portfolio/image-4.jpg',
                                              fit: BoxFit.cover,
                                              height: double.infinity,
                                              alignment: Alignment.topCenter,
                                            ),
                                          ),
                                          onHover: (val) {
                                            if (val) {
                                              setState(() =>
                                                  portfolioOnHover[3] = true);
                                            } else {
                                              setState(() =>
                                                  portfolioOnHover[3] = false);
                                            }
                                          },
                                          onTap: () {
                                            js.context.callMethod('open', [
                                              'https://www.behance.net/gallery/106907037/Mobile-Banking-Application-Concept'
                                            ]);
                                          },
                                        ),
                                      ),
                                      const SizedBox(width: 40),
                                      Flexible(
                                        fit: FlexFit.tight,
                                        child: InkWell(
                                          child: AnimatedScale(
                                            duration: const Duration(
                                                milliseconds: 200),
                                            scale: (portfolioOnHover[4])
                                                ? 1.04
                                                : 1,
                                            child: Image.asset(
                                              'lib/assets/images/portfolio/image-5.jpg',
                                              fit: BoxFit.cover,
                                              height: double.infinity,
                                              alignment: Alignment.topCenter,
                                            ),
                                          ),
                                          onHover: (val) {
                                            if (val) {
                                              setState(() =>
                                                  portfolioOnHover[4] = true);
                                            } else {
                                              setState(() =>
                                                  portfolioOnHover[4] = false);
                                            }
                                          },
                                          onTap: () {
                                            js.context.callMethod('open', [
                                              'https://www.behance.net/gallery/119042645/Real-Estate-Website-Design'
                                            ]);
                                          },
                                        ),
                                      ),
                                      const SizedBox(width: 40),
                                      Flexible(
                                        fit: FlexFit.tight,
                                        child: InkWell(
                                          child: AnimatedScale(
                                            duration: const Duration(
                                                milliseconds: 200),
                                            scale: (portfolioOnHover[5])
                                                ? 1.04
                                                : 1,
                                            child: Image.asset(
                                              'lib/assets/images/portfolio/image-6.jpg',
                                              fit: BoxFit.cover,
                                              height: double.infinity,
                                              alignment: Alignment.topCenter,
                                            ),
                                          ),
                                          onHover: (val) {
                                            if (val) {
                                              setState(() =>
                                                  portfolioOnHover[5] = true);
                                            } else {
                                              setState(() =>
                                                  portfolioOnHover[5] = false);
                                            }
                                          },
                                          onTap: () {
                                            js.context.callMethod('open', [
                                              'https://www.behance.net/gallery/106907037/Mobile-Banking-Application-Concept'
                                            ]);
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                Flexible(
                                  child: InkWell(
                                    child: AnimatedScale(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      scale: (portfolioOnHover[0]) ? 1.04 : 1,
                                      child: Image.asset(
                                        'lib/assets/images/portfolio/image-1.gif',
                                        fit: BoxFit.cover,
                                        height: double.infinity,
                                        width: double.infinity,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                    onHover: (val) {
                                      if (val) {
                                        setState(
                                            () => portfolioOnHover[0] = true);
                                      } else {
                                        setState(
                                            () => portfolioOnHover[0] = false);
                                      }
                                    },
                                    onTap: () {
                                      js.context.callMethod('open', [
                                        'https://www.behance.net/gallery/118528863/Smoothie-Store-Mobile-Application-Concept'
                                      ]);
                                    },
                                  ),
                                ),
                                const SizedBox(height: 25),
                                Flexible(
                                  child: InkWell(
                                    child: AnimatedScale(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      scale: (portfolioOnHover[1]) ? 1.04 : 1,
                                      child: Image.asset(
                                        'lib/assets/images/portfolio/image-2.gif',
                                        fit: BoxFit.cover,
                                        height: double.infinity,
                                        width: double.infinity,
                                        alignment: Alignment.center,
                                      ),
                                    ),
                                    onHover: (val) {
                                      if (val) {
                                        setState(
                                            () => portfolioOnHover[1] = true);
                                      } else {
                                        setState(
                                            () => portfolioOnHover[1] = false);
                                      }
                                    },
                                    onTap: () {
                                      js.context.callMethod('open', [
                                        'https://www.behance.net/gallery/123321859/Event-Booking-Mobile-Application-Concept'
                                      ]);
                                    },
                                  ),
                                ),
                                const SizedBox(height: 25),
                                Flexible(
                                  child: InkWell(
                                    child: AnimatedScale(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      scale: (portfolioOnHover[2]) ? 1.04 : 1,
                                      child: Image.asset(
                                        'lib/assets/images/portfolio/image-3.jpg',
                                        fit: BoxFit.cover,
                                        height: double.infinity,
                                        width: double.infinity,
                                        alignment: Alignment.topCenter,
                                      ),
                                    ),
                                    onHover: (val) {
                                      if (val) {
                                        setState(
                                            () => portfolioOnHover[2] = true);
                                      } else {
                                        setState(
                                            () => portfolioOnHover[2] = false);
                                      }
                                    },
                                    onTap: () {
                                      js.context.callMethod('open', [
                                        'https://www.behance.net/gallery/107873011/Car-Dealership-Mobile-Application-Concept'
                                      ]);
                                    },
                                  ),
                                ),
                              ],
                            ),
                    ),
                    Row(
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
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
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
                  ],
                ),
              ),
            ),
          ),
        ),
        if (MediaQuery.of(context).size.width < 576)
          Positioned.fill(
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              child: AnimatedScale(
                duration: const Duration(milliseconds: 100),
                scale: widget.portfolioScale[1]!,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.all(4),
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 2,
                            color: const Color(0xff0B99FF),
                          ),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Flexible(
                              child: InkWell(
                                child: AnimatedScale(
                                  duration: const Duration(milliseconds: 200),
                                  scale: (portfolioOnHover[3]) ? 1.04 : 1,
                                  child: Image.asset(
                                    'lib/assets/images/portfolio/image-4.jpg',
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                    width: double.infinity,
                                    alignment: Alignment.topCenter,
                                  ),
                                ),
                                onHover: (val) {
                                  if (val) {
                                    setState(() => portfolioOnHover[3] = true);
                                  } else {
                                    setState(() => portfolioOnHover[3] = false);
                                  }
                                },
                                onTap: () {
                                  js.context.callMethod('open', [
                                    'https://www.behance.net/gallery/106907037/Mobile-Banking-Application-Concept'
                                  ]);
                                },
                              ),
                            ),
                            const SizedBox(height: 25),
                            Flexible(
                              child: InkWell(
                                child: AnimatedScale(
                                  duration: const Duration(milliseconds: 200),
                                  scale: (portfolioOnHover[4]) ? 1.04 : 1,
                                  child: Image.asset(
                                    'lib/assets/images/portfolio/image-5.jpg',
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                    width: double.infinity,
                                    alignment: Alignment.topCenter,
                                  ),
                                ),
                                onHover: (val) {
                                  if (val) {
                                    setState(() => portfolioOnHover[4] = true);
                                  } else {
                                    setState(() => portfolioOnHover[4] = false);
                                  }
                                },
                                onTap: () {
                                  js.context.callMethod('open', [
                                    'https://www.behance.net/gallery/119042645/Real-Estate-Website-Design'
                                  ]);
                                },
                              ),
                            ),
                            const SizedBox(height: 25),
                            Flexible(
                              child: InkWell(
                                child: AnimatedScale(
                                  duration: const Duration(milliseconds: 200),
                                  scale: (portfolioOnHover[5]) ? 1.04 : 1,
                                  child: Image.asset(
                                    'lib/assets/images/portfolio/image-6.jpg',
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                    width: double.infinity,
                                    alignment: Alignment.topCenter,
                                  ),
                                ),
                                onHover: (val) {
                                  if (val) {
                                    setState(() => portfolioOnHover[5] = true);
                                  } else {
                                    setState(() => portfolioOnHover[5] = false);
                                  }
                                },
                                onTap: () {
                                  js.context.callMethod('open', [
                                    'https://www.behance.net/gallery/106907037/Mobile-Banking-Application-Concept'
                                  ]);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
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
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.bottomCenter,
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
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
