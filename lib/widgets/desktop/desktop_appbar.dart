import 'package:flutter/material.dart';

import 'appbar_item.dart';

class DesktopAppBar extends StatelessWidget {
  const DesktopAppBar({
    Key? key,
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
        children: const [
          Text('Logo'),
          Spacer(),
          AppBarItem(label: 'Home'),
          SizedBox(width: 30.0),
          AppBarItem(label: 'What We Do'),
          SizedBox(width: 30.0),
          AppBarItem(label: 'Gallery'),
          SizedBox(width: 30.0),
          AppBarItem(label: 'Team'),
          SizedBox(width: 30.0),
          AppBarItem(label: 'About'),
        ],
      ),
    );
  }
}
