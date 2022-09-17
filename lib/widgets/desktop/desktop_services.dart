import 'package:flutter/material.dart';
import 'package:live_clean_zambia/constants/colors.dart';
import 'package:live_clean_zambia/providers/site_data.dart';
import 'package:live_clean_zambia/widgets/desktop/service_card.dart';
import 'blue_banner.dart';
import 'package:sizer/sizer.dart';

class DesktopServices extends StatelessWidget {
  const DesktopServices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool screen = MediaQuery.of(context).size.width > 1146;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BlueBanner(
          title: 'What We Do',
          des:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 11.52.h, horizontal: 10.2.w),
          color: kGreyBg,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: SiteData.services
                    .getRange(0, screen ? 3 : 2)
                    .map(
                      (service) => ServiceCard(service: service),
                    )
                    .toList(),
              ),
              SizedBox(height: 11.52.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: SiteData.services
                    .getRange(screen ? 3 : 2, screen ? 6 : 4)
                    .map(
                      (service) => ServiceCard(service: service),
                    )
                    .toList(),
              ),
              SizedBox(height: screen ? 0 : 11.52.h),
              Visibility(
                visible: !screen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: SiteData.services
                      .getRange(4, 6)
                      .map(
                        (service) => ServiceCard(service: service),
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
