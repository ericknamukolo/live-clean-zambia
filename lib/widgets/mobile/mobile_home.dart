import 'package:flutter/material.dart';
import 'package:live_clean_zambia/constants/colors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/text.dart';
import '../../providers/site_data.dart';
import '../custom_button.dart';
import '../desktop/desktop_contact.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .8,
          child: Image.asset(
            'assets/images/home.jpg',
            width: double.infinity,
            fit: BoxFit.cover,
            color: kPrimaryColor.withOpacity(.7),
            colorBlendMode: BlendMode.modulate,
          ),
        ),
        Positioned.fill(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  SiteData.homeHeader,
                  style: kTitleTextStyle,
                  textAlign: TextAlign.center,
                ),
                Text(
                  SiteData.homeDes,
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
          ),
        ),
      ],
    );
  }
}
