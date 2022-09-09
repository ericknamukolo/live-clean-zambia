import 'package:flutter/material.dart';
import 'package:live_clean_zambia/widgets/desktop/blue_banner.dart';

class DesktopTeam extends StatelessWidget {
  const DesktopTeam({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          BlueBanner(
              des:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              title: 'Meet Our Team'),
        ],
      ),
    );
  }
}
