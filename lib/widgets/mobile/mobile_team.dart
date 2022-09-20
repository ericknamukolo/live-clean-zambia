import 'package:flutter/material.dart';
import 'package:live_clean_zambia/providers/site_data.dart';
import 'package:live_clean_zambia/widgets/desktop/blue_banner.dart';
import 'package:live_clean_zambia/widgets/desktop/team_card.dart';

class MobileTeam extends StatelessWidget {
  const MobileTeam({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BlueBanner(
            title: 'Meet Our Team',
            des:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            isMobile: true),
        const SizedBox(height: 30),
        Column(
          children: SiteData.services
              .map(
                (team) => const TeamCard(isMobile: true),
              )
              .toList(),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
