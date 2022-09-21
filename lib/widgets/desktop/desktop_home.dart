import 'package:flutter/material.dart';
import 'package:live_clean_zambia/constants/text.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../custom_button.dart';
import 'desktop_contact.dart';

class DesktopHome extends StatelessWidget {
  const DesktopHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 2.88.h),
      width: double.infinity,
      height: 75.h,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage('assets/images/home.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.3),
            BlendMode.srcOver,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            style: kTitleTextStyle.copyWith(
              fontSize: 8.sp,
            ),
            textAlign: TextAlign.center,
          ),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            style: kBodyTextStyleWhite,
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconBtn(
                click: () async {
                  Uri url = Uri.parse(
                      'https://youtube.com/channel/UC0FOT2lyKqYHc1epLkY_LBg');
                  await launchUrl(url);
                },
                icon: MdiIcons.youtube,
                isWhite: true,
              ),
              const SizedBox(width: 14.0),
              IconBtn(
                click: () async {
                  Uri url = Uri.parse('https://twitter.com/LiveCleanZM');
                  await launchUrl(url);
                },
                icon: MdiIcons.twitter,
                isWhite: true,
              ),
              const SizedBox(width: 14.0),
              IconBtn(
                click: () async {
                  Uri url = Uri.parse(
                      'https://linkedin.com/company/live-clean-initiatives/?viewAsMember=true');
                  await launchUrl(url);
                },
                icon: MdiIcons.linkedin,
                isWhite: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
