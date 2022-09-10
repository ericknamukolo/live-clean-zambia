import 'package:flutter/material.dart';
import 'package:live_clean_zambia/constants/colors.dart';
import 'package:live_clean_zambia/providers/site_data.dart';
import 'package:live_clean_zambia/widgets/desktop/image_banner.dart';

import '../../constants/text.dart';
import 'text_and_image.dart';

class DesktopGallery extends StatelessWidget {
  const DesktopGallery({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80.0),
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'Gallery',
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
          const SizedBox(height: 40.0),
          GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 140.0),
            shrinkWrap: true,
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
            ),
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                color: kPrimaryColor,
                image: DecorationImage(
                  image: AssetImage(SiteData.gallery[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 80.0),
          const ImageBanner(
            des:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            img: 'assets/images/wash.jpg',
            title: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          ),
          const SizedBox(height: 100.0),
          const TextAndImage(hasbtn: true),
        ],
      ),
    );
  }
}
