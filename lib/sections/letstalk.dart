import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:universal_html/html.dart' as html;
import 'package:url_launcher/url_launcher.dart';
import 'package:thaanu_portfolio/global_variables.dart' as globals;
import 'dart:js' as js;

class LetsTalk extends StatelessWidget {
  final List<double?> letsTalkHeight;
  final double letsTalkScale;
  const LetsTalk(
      {Key? key, required this.letsTalkHeight, required this.letsTalkScale})
      : super(key: key);

  Future<void> showCV() async {
    var bytes = await rootBundle
        .load("lib/assets/files/cv.pdf"); // location of your asset file

    final blob = html.Blob([bytes], 'application/pdf');
    final url = html.Url.createObjectUrlFromBlob(blob);
    html.window.open(url, "_blank");
    html.Url.revokeObjectUrl(url);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: letsTalkHeight[0],
            child: AnimatedScale(
              duration: const Duration(milliseconds: 100),
              scale: letsTalkScale,
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: globals.mainColor,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: const Text(
                        'Let\'s Talk',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 80,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
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
          Container(
            height: letsTalkHeight[1],
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            clipBehavior: Clip.hardEdge,
            child: FittedBox(
              fit: BoxFit.none,
              child: Center(
                child: SingleChildScrollView(
                  controller: ScrollController(),
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Interested',
                        style: TextStyle(
                            fontSize: 80,
                            fontWeight: FontWeight.w700,
                            color: globals.mainColor,
                            height: 0.3),
                      ),
                      Text(
                        'to work with me?',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w300,
                          color: globals.mainColor,
                        ),
                      ),
                      const SizedBox(height: 14),
                      const Text(
                        'Currently I\'m looking for full time UI UX job.\nIf you\'re interested, feel free to contact me.',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      RichText(
                        text: TextSpan(
                          text: 'Don\'t forget to ',
                          style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                          children: [
                            TextSpan(
                              text: 'drop me a line',
                              style: const TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  if (!await launch(
                                      'mailto:thaanup@gmail.com')) {
                                    throw 'Could not launch url';
                                  }
                                },
                            ),
                            const TextSpan(text: ' or '),
                            TextSpan(
                              text: 'download my CV',
                              style: const TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  showCV();
                                },
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          InkWell(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: globals.mainColor,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Icon(
                                FontAwesomeIcons.linkedinIn,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                            onTap: () {
                              js.context.callMethod('open', [
                                'https://www.linkedin.com/in/thaanu-perera-0a84b9194'
                              ]);
                            },
                          ),
                          const SizedBox(width: 12),
                          InkWell(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: globals.mainColor,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Icon(
                                FontAwesomeIcons.behance,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                            onTap: () {
                              js.context.callMethod('open',
                                  ['https://www.behance.net/thaanuperera']);
                            },
                          ),
                          const SizedBox(width: 12),
                          InkWell(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: globals.mainColor,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Icon(
                                FontAwesomeIcons.github,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                            onTap: () {
                              js.context.callMethod(
                                  'open', ['https://github.com/Thaanu2001']);
                            },
                          ),
                          const SizedBox(width: 12),
                          InkWell(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: globals.mainColor,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Icon(
                                FontAwesomeIcons.dribbble,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                            onTap: () {
                              js.context.callMethod(
                                  'open', ['https://dribbble.com/thaanuP']);
                            },
                          ),
                          const SizedBox(width: 12),
                          InkWell(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: globals.mainColor,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Icon(
                                FontAwesomeIcons.twitter,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                            onTap: () {
                              js.context.callMethod(
                                  'open', ['https://twitter.com/ThaanuPerera']);
                            },
                          ),
                          const SizedBox(width: 12),
                          InkWell(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: globals.mainColor,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Icon(
                                FontAwesomeIcons.facebook,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                            onTap: () {
                              js.context.callMethod('open',
                                  ['https://www.facebook.com/thaanu.perera']);
                            },
                          ),
                          const SizedBox(width: 12),
                          InkWell(
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: globals.mainColor,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: const Icon(
                                FontAwesomeIcons.instagram,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                            onTap: () {
                              js.context.callMethod('open',
                                  ['https://www.instagram.com/_thaxnu_']);
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
