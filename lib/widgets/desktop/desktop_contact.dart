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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
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
                        const Text('Contacts', style: kBodyTitleTextStyleGrey),
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
                  ],
                ),
                Column(
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
                        const Text('Socials', style: kBodyTitleTextStyleGrey),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        IconBtn(
                          click: () async {},
                          icon: MdiIcons.facebook,
                        ),
                        const SizedBox(width: 14.0),
                        IconBtn(
                          click: () async {
                            Uri url =
                                Uri.parse('https://twitter.com/LiveCleanZM');
                            await launchUrl(url);
                          },
                          icon: MdiIcons.twitter,
                        ),
                        const SizedBox(width: 14.0),
                        IconBtn(
                          click: () async {
                            Uri url = Uri.parse(
                                'https://linkedin.com/company/live-clean-initiatives/');
                            await launchUrl(url);
                          },
                          icon: MdiIcons.linkedin,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
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
                        const Text('Visit Us', style: kBodyTitleTextStyleGrey),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                        'Office 101, 1st Floor\nFoxdale Court Office Park\n609 Zambezi Road, Roma\nLusaka, Zambia.',
                        style: kBodyTextStyleGrey),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IconBtn extends StatefulWidget {
  final IconData icon;
  final Function() click;
  const IconBtn({
    Key? key,
    required this.icon,
    required this.click,
  }) : super(key: key);

  @override
  State<IconBtn> createState() => _IconBtnState();
}

class _IconBtnState extends State<IconBtn> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.click,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() {
          _isHovered = true;
        }),
        onExit: (_) => setState(() {
          _isHovered = false;
        }),
        child: Icon(
          widget.icon,
          color: _isHovered ? kPrimaryColor : kBodyTextStyleGrey.color,
          size: 30.0,
        ),
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
