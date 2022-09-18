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
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
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
                children: SiteData.services
                    .getRange(0, screen ? 3 : 2)
                    .map(
                      (service) => const TeamCard(),
                    )
                    .toList(),
              ),
              SizedBox(height: 11.52.h),
              Row(
                mainAxisAlignment: screen
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.spaceAround,
                children: SiteData.services
                    .getRange(screen ? 3 : 2, screen ? 6 : 4)
                    .map(
                      (service) => const TeamCard(),
                    )
                    .toList(),
              ),
              SizedBox(height: screen ? 0 : 11.52.h),
              Visibility(
                visible: !screen,
                child: Row(
                  mainAxisAlignment: screen
                      ? MainAxisAlignment.spaceBetween
                      : MainAxisAlignment.spaceAround,
                  children: SiteData.services
                      .getRange(4, 6)
                      .map(
                        (service) => const TeamCard(),
                      )
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
