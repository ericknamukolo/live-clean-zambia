import 'package:flutter/material.dart';
import 'package:live_clean_zambia/widgets/desktop/blue_banner.dart';
import 'package:live_clean_zambia/widgets/desktop/team_card.dart';

import '../../constants/colors.dart';
import '../../providers/site_data.dart';

class DesktopTeam extends StatelessWidget {
  const DesktopTeam({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BlueBanner(
            des:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            title: 'Meet Our Team'),
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
                      (service) => const TeamCard(),
                    )
                    .toList(),
              ),
              const SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: SiteData.services
                    .getRange(3, 6)
                    .map(
                      (service) => const TeamCard(),
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
