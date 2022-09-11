import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';

class TextTitle extends StatelessWidget {
  final String title;
  const TextTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: kTitleTextStyle.copyWith(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: kSecondaryColor,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10.0),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 400.0),
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            style: kBodyTextStyleGrey,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
