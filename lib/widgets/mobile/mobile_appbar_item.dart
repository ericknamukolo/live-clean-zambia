import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';

class MobileAppBarItem extends StatelessWidget {
  final String title;
  const MobileAppBarItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10.0),
            height: 20,
            width: 4,
            color: kSecondaryColor,
          ),
          Text(title, style: kBodyTitleTextStyleGrey),
        ],
      ),
    );
  }
}
