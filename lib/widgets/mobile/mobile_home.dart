import 'package:flutter/material.dart';
import 'package:live_clean_zambia/constants/colors.dart';

import '../../constants/text.dart';
import '../custom_button.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .8,
          child: Image.asset(
            'assets/images/home.jpg',
            width: double.infinity,
            fit: BoxFit.cover,
            color: kPrimaryColor.withOpacity(.7),
            colorBlendMode: BlendMode.modulate,
          ),
        ),
        Positioned.fill(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
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
                CustomButton(text: 'Contact Us', isMobile: true),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
