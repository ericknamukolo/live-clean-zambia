import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'appbar_item.dart';

class DesktopAppBar extends StatelessWidget {
  final Function() home;
  final Function() services;
  final Function() gallery;
  final Function() team;
  final Function() about;
  const DesktopAppBar({
    Key? key,
    required this.about,
    required this.services,
    required this.gallery,
    required this.team,
    required this.home,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 140.0),
      width: double.infinity,
      height: 80.0,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 6.0,
            color: Color(0x29000000),
            offset: Offset(0.0, 3.0),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset('assets/images/logo.png', width: 200),
          const Spacer(),
          AppBarItem(label: 'Home', click: home),
          const SizedBox(width: 30.0),
          AppBarItem(label: 'What We Do', click: services),
          const SizedBox(width: 30.0),
          AppBarItem(label: 'Gallery', click: gallery),
          const SizedBox(width: 30.0),
          AppBarItem(label: 'Team', click: team),
          const SizedBox(width: 30.0),
          AppBarItem(label: 'About', click: about),
        ],
      ),
    );
  }
}
