import 'package:flutter/material.dart';
import 'package:live_clean_zambia/widgets/desktop/blue_banner.dart';
import 'package:live_clean_zambia/widgets/desktop/team_card.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';
import '../../providers/site_data.dart';
import 'desktop_contact.dart';

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
          padding: EdgeInsets.only(
              top: 11.0.h, bottom: 40.0, left: 10.2.w, right: 10.2.w),
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
        Text(
          'Support Team',
          style: kTitleTextStyle.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: kPrimaryColor,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TeamPart(title: 'Cashiers', icon: MdiIcons.cashMultiple, num: '6'),
            const SizedBox(width: 100.0),
            TeamPart(
                title: 'Cleaners',
                icon: Icons.cleaning_services_rounded,
                num: '8'),
            const SizedBox(width: 100.0),
            TeamPart(title: 'Guards', icon: MdiIcons.policeBadge, num: '4'),
          ],
        ),
      ],
    );
  }
}

class TeamPart extends StatelessWidget {
  final IconData icon;
  final String num;
  final String title;
  const TeamPart({
    Key? key,
    required this.icon,
    required this.num,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10.0),
              height: 20,
              width: 4,
              color: kSecondaryColor,
            ),
            Text(title, style: kBodyTitleTextStyleGrey),
          ],
        ),
        const SizedBox(height: 10.0),
        Row(
          children: [
            Icon(
              icon,
              color: kPrimaryColor,
            ),
            const SizedBox(width: 5.0),
            Text(
              num,
              style: kBodyTextStyleGrey.copyWith(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
