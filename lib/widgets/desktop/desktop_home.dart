import 'package:flutter/material.dart';
import 'package:live_clean_zambia/constants/text.dart';

import '../custom_button.dart';

class DesktopHome extends StatelessWidget {
  const DesktopHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 430, vertical: 20),
      width: double.infinity,
      height: 520,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage('assets/images/home.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.3),
            BlendMode.srcOver,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            style: kTitleTextStyle,
            textAlign: TextAlign.center,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            style: kBodyTextStyleWhite,
            textAlign: TextAlign.center,
          ),
          CustomButton(),
        ],
      ),
    );
  }
}
