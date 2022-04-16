import 'package:flutter/material.dart';
import 'package:thaanu_portfolio/global_variables.dart' as globals;

class Navbar extends StatefulWidget {
  final Function projectsOnTap, portfolioOnTap, talkOnTap;
  const Navbar(
      {Key? key,
      required this.projectsOnTap,
      required this.portfolioOnTap,
      required this.talkOnTap})
      : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  bool projectsOnHover = false, portfolioOnHover = false, talkOnHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25),
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'HELLO',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: globals.mainColor,
            ),
          ),
          const SizedBox(width: 40),
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            child: Text(
              'PROJECTS',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: (projectsOnHover) ? globals.mainColor : Colors.black,
              ),
            ),
            onTap: () => widget.projectsOnTap(),
            onHover: (val) {
              if (val) {
                setState(() => projectsOnHover = true);
              } else {
                setState(() => projectsOnHover = false);
              }
            },
          ),
          const SizedBox(width: 40),
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            child: Text(
              'PORTFOLIO',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: (portfolioOnHover) ? globals.mainColor : Colors.black,
              ),
            ),
            onTap: () => widget.portfolioOnTap(),
            onHover: (val) {
              if (val) {
                setState(() => portfolioOnHover = true);
              } else {
                setState(() => portfolioOnHover = false);
              }
            },
          ),
          const SizedBox(width: 40),
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            child: Text(
              'LET\'S TALK',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: (talkOnHover) ? globals.mainColor : Colors.black,
              ),
            ),
            onTap: () => widget.talkOnTap(),
            onHover: (val) {
              if (val) {
                setState(() => talkOnHover = true);
              } else {
                setState(() => talkOnHover = false);
              }
            },
          ),
        ],
      ),
    );
  }
}
