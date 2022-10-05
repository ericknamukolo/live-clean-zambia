import 'package:flutter/material.dart';

import 'image_banner.dart';
import 'text_and_image.dart';

class RAndDDesktop extends StatelessWidget {
  const RAndDDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 80.0),
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: const [
          ImageBanner(
            des:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            img: 'assets/images/wash.jpg',
            title: 'Research & Development',
          ),
          SizedBox(height: 100.0),
          TextAndImage(hasbtn: false),
          SizedBox(height: 100.0),
          TextAndImage(hasbtn: false, isReversed: true),
        ],
      ),
    );
  }
}
