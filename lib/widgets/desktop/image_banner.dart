import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';

class ImageBanner extends StatelessWidget {
  const ImageBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 430.0),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        image: DecorationImage(
          image: const AssetImage('assets/images/wash.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            const Color(0xff65A234).withOpacity(0.5),
            BlendMode.srcOver,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            style: kTitleTextStyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.0),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            style: kBodyTextStyleWhite,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
