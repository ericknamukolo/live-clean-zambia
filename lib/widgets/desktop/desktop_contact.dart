import 'package:flutter/material.dart';
import 'package:live_clean_zambia/widgets/desktop/text_title.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';

class DesktopContact extends StatelessWidget {
  const DesktopContact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kGreyBg,
      padding: const EdgeInsets.symmetric(vertical: 80.0),
      child: Column(
        children: [
          const TextTitle(title: 'Contact Us'),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 140.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10.0),
                            height: 20,
                            width: 4,
                            color: kSecondaryColor,
                          ),
                          const Text('Contacts & Socials',
                              style: kBodyTitleTextStyleGrey),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      IconTextButton(
                        icon: MdiIcons.email,
                        text: 'ak@livecleanzambia.com',
                        click: () async {
                          Uri url = Uri.parse('mailto:ak@livecleanzambia.com');
                          await launchUrl(url);
                        },
                      ),
                      const SizedBox(height: 10.0),
                      IconTextButton(
                        icon: MdiIcons.phone,
                        text: '+260 969239115',
                        click: () {},
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        children: [
                          IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: Icon(MdiIcons.facebook,
                                color: kBodyTextStyleGrey.color, size: 26.0),
                          ),
                          const SizedBox(width: 10.0),
                          IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: Icon(MdiIcons.twitter,
                                color: kBodyTextStyleGrey.color, size: 26.0),
                          ),
                          const SizedBox(width: 10.0),
                          IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: Icon(MdiIcons.youtube,
                                color: kBodyTextStyleGrey.color, size: 26.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
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
                          const Text('Visit Us',
                              style: kBodyTitleTextStyleGrey),
                        ],
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                          'Office 101, 1st Floor\nFoxdale Court Office Park\n609 Zambezi Road, Roma\nLusaka, Zambia.',
                          style: kBodyTextStyleGrey),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IconTextButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function() click;
  const IconTextButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: kPrimaryColor, size: 26.0),
        const SizedBox(width: 5.0),
        TextButton(
            onPressed: click, child: Text(text, style: kBodyTextStyleGrey)),
      ],
    );
  }
}
