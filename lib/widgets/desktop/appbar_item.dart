import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';

class AppBarItem extends StatefulWidget {
  final String label;
  final Function() click;
  const AppBarItem({
    Key? key,
    required this.label,
    required this.click,
  }) : super(key: key);

  @override
  State<AppBarItem> createState() => _AppBarItemState();
}

class _AppBarItemState extends State<AppBarItem> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() {
        _isHovered = true;
      }),
      onExit: (_) => setState(() {
        _isHovered = false;
      }),
      child: GestureDetector(
        onTap: widget.click,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.label,
              style: kBodyTitleTextStyleGrey.copyWith(
                color: _isHovered ? kSecondaryColor : kBodyTextStyleGrey.color,
              ),
            ),
            AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: _isHovered ? 2.5 : 0),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: _isHovered ? 4 : 0,
              width: _isHovered ? 45 : 0,
              color: kSecondaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
