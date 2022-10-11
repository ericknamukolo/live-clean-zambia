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
                'We are a young and vibrant team, sensitive to gender and disability equity.',
            isMobile: true),
        const SizedBox(height: 30),
        Column(
          children: SiteData.team
              .map(
                (team) => TeamCard(isMobile: true, team: team),
              )
              .toList(),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
