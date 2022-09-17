import 'package:flutter/material.dart';
import 'package:live_clean_zambia/providers/site_data.dart';
import 'package:sizer/sizer.dart';

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
    bool screen = MediaQuery.of(context).size.width > 1146;

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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screen ? 29.28.w : 200),
          child: const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            style: kBodyTextStyleGrey,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
