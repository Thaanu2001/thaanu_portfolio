import 'package:flutter/material.dart';
import 'package:thaanu_portfolio/global_variables.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final bool isDark;
  const ProjectCard({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
    required this.isDark,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width > 768)
          ? MediaQuery.of(context).size.width * 0.5
          : MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      padding: EdgeInsets.fromLTRB(
          (MediaQuery.of(context).size.width > 576) ? 100 : 50,
          60,
          (MediaQuery.of(context).size.width > 576) ? 100 : 50,
          60),
      color: (isDark) ? mainColor : Colors.white,
      child: Column(
        children: [
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: (!isDark) ? Colors.black : Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Flexible(
            fit: FlexFit.tight,
            child: Image.asset(
              image,
              width: double.infinity,
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
          const SizedBox(height: 40),
          Text(
            description,
            style: TextStyle(
              fontSize: (MediaQuery.of(context).size.width < 768 &&
                      MediaQuery.of(context).size.width > 576)
                  ? 22
                  : 18,
              fontWeight: FontWeight.w300,
              color: (!isDark) ? Colors.black : Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
