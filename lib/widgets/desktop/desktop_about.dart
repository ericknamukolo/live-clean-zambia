import 'package:flutter/material.dart';
import 'package:live_clean_zambia/widgets/desktop/image_banner.dart';
import 'package:live_clean_zambia/widgets/desktop/text_and_image.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';
import '../../providers/site_data.dart';

class DesktopAbout extends StatelessWidget {
  const DesktopAbout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              Text(
                'Our Toilets',
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
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 140.0),
                child: Column(
                  children: [
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ToiletLocationCard extends StatelessWidget {
  final String place;
  const ToiletLocationCard({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 280,
          width: 500,
          decoration: const BoxDecoration(
            color: kPrimaryColor,
            image: DecorationImage(
              image: AssetImage('assets/images/img.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        Text(
          place,
          style: kBodyTitleTextStyleGrey.copyWith(
            color: kPrimaryColor,
          ),
        ),
        const SizedBox(height: 10.0),
        const Text(
          'Monday - Friday : 06:00 - 19:00 hrs',
          style: kBodyTextStyleGrey,
        ),
        const SizedBox(height: 10.0),
        const Text(
          'Saturday : 06:00 - 18:00 hrs',
          style: kBodyTextStyleGrey,
        ),
        const SizedBox(height: 10.0),
        Row(
          children: [
            const Text(
              'Sunday : ',
              style: kBodyTextStyleGrey,
            ),
            Text(
              'Closed',
              style: kBodyTextStyleGrey.copyWith(
                color: Theme.of(context).errorColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
