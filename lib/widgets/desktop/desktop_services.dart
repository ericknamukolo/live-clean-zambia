import 'package:flutter/material.dart';
import 'package:live_clean_zambia/constants/colors.dart';
import 'package:live_clean_zambia/providers/site_data.dart';
import 'package:live_clean_zambia/widgets/desktop/service_card.dart';

import 'blue_banner.dart';

class DesktopServices extends StatelessWidget {
  const DesktopServices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BlueBanner(
          title: 'What We Do',
          des:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        ),
        Container(
          padding:
              const EdgeInsets.symmetric(vertical: 80.0, horizontal: 140.0),
          color: kGreyBg,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: SiteData.services
                    .getRange(0, 3)
                    .map(
                      (service) => const ServiceCard(),
                    )
                    .toList(),
              ),
              const SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: SiteData.services
                    .getRange(3, 6)
                    .map(
                      (service) => const ServiceCard(),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
