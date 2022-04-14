import 'package:flutter/material.dart';
import 'package:thaanu_portfolio/widgets/project_card.dart';
import 'package:thaanu_portfolio/global_variables.dart' as globals;

class Projects extends StatelessWidget {
  final List<double?> projectsHeight;
  final double currectScrollPosition;
  const Projects({
    Key? key,
    required this.projectsHeight,
    required this.currectScrollPosition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (currectScrollPosition < 2800)
          Positioned.fill(
            child: Container(
              alignment: Alignment.center,
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
        if (currectScrollPosition < 4000)
          Positioned(
            top: projectsHeight[0],
            child: Align(
              alignment: const Alignment(-1, -2),
              child: Row(
                children: const [
                  ProjectCard(
                    title: 'Nolimit Mobile UI',
                    description:
                        'NOLIMIT is a leading retail fashion chain in Sri Lanka. This UI is designed for their mobile application and website mobile view.',
                    image: 'lib/assets/images/nolimit_img.jpg',
                    isDark: true,
                  ),
                  ProjectCard(
                    title: 'SneakersAlert Mobile App',
                    description:
                        'SneakersAlert is a Netherlands based e-commerce sneakers shop. I developed their mobile application using Flutter cross-platform development.',
                    image: 'lib/assets/images/sneakersalert_img.jpg',
                    isDark: false,
                  ),
                ],
              ),
            ),
          ),
        if (currectScrollPosition < 5200)
          Positioned(
            top: projectsHeight[1],
            child: Align(
              alignment: const Alignment(-1, -2),
              child: Row(
                children: const [
                  ProjectCard(
                    title: 'Canny Mobile App',
                    description:
                        'Canny is a US-based company which lets users to get nearest deals. I developed their mobile application using Flutter framework to support both iOS and Android platforms.',
                    image: 'lib/assets/images/canny_img.jpg',
                    isDark: false,
                  ),
                  ProjectCard(
                    title: 'SLSC Website UI',
                    description:
                        'Sri Lanka Shipping Company Limited has been at the forefront of the Shipping and Maritime Industry. I designed the user interface for their official website.',
                    image: 'lib/assets/images/slsc_img.jpg',
                    isDark: true,
                  ),
                ],
              ),
            ),
          ),
        Positioned(
          top: projectsHeight[2],
          child: Align(
            alignment: const Alignment(-1, -2),
            child: Row(
              children: const [
                ProjectCard(
                  title: 'Wolff Architects UI',
                  description:
                      'Wolff Architects are a design lead architectural practice located in Notting Hill, West London. I designed the user interface for their official website.',
                  image: 'lib/assets/images/wolff_img.jpg',
                  isDark: true,
                ),
                ProjectCard(
                  title: 'Axis Store Mobile App',
                  description:
                      'This application is a simple eCommerce mobile app that has been developed using the Flutter framework for a US-based company called Owan Global LLC.',
                  image: 'lib/assets/images/axis_img.jpg',
                  isDark: false,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
