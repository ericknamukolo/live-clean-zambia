import 'package:flutter/material.dart';
import 'package:live_clean_zambia/widgets/desktop/image_banner.dart';
import 'package:live_clean_zambia/widgets/desktop/text_and_image.dart';
import 'package:live_clean_zambia/widgets/desktop/text_title.dart';
import 'package:sizer/sizer.dart';

import '../../providers/site_data.dart';
import 'toilet_location_card.dart';

class DesktopAbout extends StatelessWidget {
  const DesktopAbout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool screen = MediaQuery.of(context).size.width > 1146;
    return Column(
      children: [
        const ImageBanner(
          title: 'About Us',
          des:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
          img:
              'assets/images/christina-wocintechchat-com-rg1y72eKw6o-unsplash.jpg',
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 100.0),
          child: Column(
            children: [
              const TextAndImage(),
              const SizedBox(height: 100.0),
              const TextAndImage(isReversed: true),
              const SizedBox(height: 60.0),
              const TextTitle(title: 'Our Toilets'),
              const SizedBox(height: 40.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.2.w),
                child: Column(
                  children: screen
                      ? [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: SiteData.toilets
                                .getRange(0, 2)
                                .map(
                                  (tl) => ToiletLocationCard(place: tl),
                                )
                                .toList(),
                          ),
                          const SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: SiteData.toilets
                                .getRange(2, 3)
                                .map(
                                  (tl) => ToiletLocationCard(place: tl),
                                )
                                .toList(),
                          ),
                        ]
                      : SiteData.toilets
                          .map((tl) =>
                              ToiletLocationCard(place: tl, addSpace: true))
                          .toList(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
