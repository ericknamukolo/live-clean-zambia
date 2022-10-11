import 'package:flutter/material.dart';
import 'package:live_clean_zambia/widgets/desktop/text_title.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';

class DesktopContact extends StatelessWidget {
  final bool isMobile;
  const DesktopContact({
    Key? key,
    this.isMobile = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kGreyBg,
      padding: EdgeInsets.symmetric(vertical: isMobile ? 50 : 0.0),
      margin: EdgeInsets.only(bottom: 80.0, top: isMobile ? 0.0 : 80.0),
      child: Column(
        children: [
          TextTitle(
              title: 'Contact Us',
              isMobile: isMobile,
              des:
                  'Would like to learn more about us?\nAre you interested in partnering with us?\nGet in touch!'),
          const SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: isMobile ? 15.0 : 10.2.w),
            child: isMobile
                ? Column(
                    children: const [
                      ContactsPart(),
                      SizedBox(height: 30),
                      SocialsPart(),
                      SizedBox(height: 30),
                      VisitUsPart(),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      ContactsPart(),
                      SocialsPart(),
                      VisitUsPart(),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}

class VisitUsPart extends StatelessWidget {
  const VisitUsPart({
    Key? key,
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
            const Text('Visit Us', style: kBodyTitleTextStyleGrey),
          ],
        ),
        const SizedBox(height: 10.0),
        const Text('Plot No. 21,\nManda Hill Road,\nLusaka Zambia.',
            style: kBodyTextStyleGrey),
      ],
    );
  }
}

class SocialsPart extends StatelessWidget {
  const SocialsPart({
    Key? key,
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
            const Text('Socials', style: kBodyTitleTextStyleGrey),
          ],
        ),
        const SizedBox(height: 10.0),
        Row(
          children: [
            IconBtn(
              click: () async {
                Uri url = Uri.parse(
                    'https://youtube.com/channel/UC0FOT2lyKqYHc1epLkY_LBg');
                await launchUrl(url);
              },
              icon: MdiIcons.youtube,
            ),
            const SizedBox(width: 14.0),
            IconBtn(
              click: () async {
                Uri url = Uri.parse('https://twitter.com/LiveCleanZM');
                await launchUrl(url);
              },
              icon: MdiIcons.twitter,
            ),
            const SizedBox(width: 14.0),
            IconBtn(
              click: () async {
                Uri url = Uri.parse(
                    'https://linkedin.com/company/live-clean-initiatives/?viewAsMember=true');
                await launchUrl(url);
              },
              icon: MdiIcons.linkedin,
            ),
          ],
        ),
      ],
    );
  }
}

class ContactsPart extends StatelessWidget {
  const ContactsPart({
    Key? key,
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
          click: () async {
            Uri url = Uri.parse('tel:+260969239115');
            await launchUrl(url);
          },
        ),
      ],
    );
  }
}

class IconBtn extends StatefulWidget {
  final IconData icon;
  final Function() click;
  final bool isWhite;
  const IconBtn({
    Key? key,
    required this.icon,
    required this.click,
    this.isWhite = false,
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
          color: _isHovered
              ? kPrimaryColor
              : widget.isWhite
                  ? Colors.white
                  : kBodyTextStyleGrey.color,
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
