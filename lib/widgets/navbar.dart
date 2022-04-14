import 'package:flutter/material.dart';
import 'package:thaanu_portfolio/global_variables.dart' as globals;

class Navbar extends StatefulWidget {
  final Function projectsOnTap;
  const Navbar({Key? key, required this.projectsOnTap}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  bool projectsOnHover = false;

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
          const Text(
            'PORTFOLIO',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(width: 40),
          const Text(
            'EXPERIENCE',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(width: 40),
          const Text(
            'LET\'S TALK',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}