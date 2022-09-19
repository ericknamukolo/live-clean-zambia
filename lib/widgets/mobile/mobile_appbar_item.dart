import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';

class MobileAppBarItem extends StatelessWidget {
  final String title;
  final double indi;
  final Function() click;
  const MobileAppBarItem({
    Key? key,
    required this.title,
    required this.indi,
    required this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: click,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        color: Colors.transparent,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10.0),
              height: indi != 0.0 ? 20.0 : 0.0,
              width: 4,
              color: kSecondaryColor,
            ),
            Text(title, style: kBodyTitleTextStyleGrey),
          ],
        ),
      ),
    );
  }
}
