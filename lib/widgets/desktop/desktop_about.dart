import 'package:flutter/material.dart';
import 'package:live_clean_zambia/widgets/desktop/image_banner.dart';

class DesktopAbout extends StatelessWidget {
  const DesktopAbout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          ImageBanner(
            title: 'About Us',
            des:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.',
            img:
                'assets/images/christina-wocintechchat-com-rg1y72eKw6o-unsplash.jpg',
          ),
        ],
      ),
    );
  }
}
