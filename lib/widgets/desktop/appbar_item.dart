import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';

class AppBarItem extends StatefulWidget {
  final String label;
  final Function() click;
  final double indi;
  const AppBarItem({
    Key? key,
    required this.label,
    required this.click,
    required this.indi,
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
            Container(
              width: widget.label.length > 15 ? 150 : null,
              child: Text(
                widget.label,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: kBodyTitleTextStyleGrey.copyWith(
                  color: _isHovered
                      ? kSecondaryColor
                      : widget.indi == 0.0
                          ? kBodyTextStyleGrey.color
                          : kSecondaryColor,
                ),
              ),
            ),
            AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: _isHovered
                    ? 2.5
                    : widget.indi == 0.0
                        ? 0
                        : 2.5),
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: _isHovered
                  ? 4
                  : widget.indi == 0.0
                      ? 0
                      : 4,
              width: _isHovered ? 45 : widget.indi,
              color: kSecondaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
