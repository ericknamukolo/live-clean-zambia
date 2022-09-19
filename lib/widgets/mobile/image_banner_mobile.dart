import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';

class ImageBannerMobile extends StatelessWidget {
  final String imgUrl;
  const ImageBannerMobile({
    Key? key,
    required this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Image.asset(
            imgUrl,
            width: double.infinity,
            fit: BoxFit.cover,
            color: kPrimaryColor.withOpacity(.7),
            colorBlendMode: BlendMode.modulate,
          ),
        ),
        Positioned.fill(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  style: kTitleTextStyle.copyWith(fontSize: 22),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  style: kBodyTextStyleWhite,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
