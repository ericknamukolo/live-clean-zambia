import 'package:flutter/material.dart';
import 'package:live_clean_zambia/widgets/desktop/blue_banner.dart';
import 'package:live_clean_zambia/widgets/desktop/team_card.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';
import '../../providers/site_data.dart';

class DesktopTeam extends StatelessWidget {
  const DesktopTeam({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool screen = MediaQuery.of(context).size.width > 1146;
    return Column(
      children: [
        const BlueBanner(
            des:
                'We are a young and vibrant team, sensitive to gender and disability equity.',
            title: 'Meet Our Team'),
        Container(
          padding: EdgeInsets.symmetric(vertical: 11.52.h, horizontal: 10.2.w),
          color: kGreyBg,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: screen
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.spaceAround,
                children: SiteData.team
                    .getRange(0, screen ? 3 : 2)
                    .map(
                      (team) => TeamCard(team: team),
                    )
                    .toList(),
              ),
              SizedBox(height: screen ? 0 : 11.52.h),
              Visibility(
                visible: !screen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TeamCard(
                      team: SiteData.team[2],
                    )
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
