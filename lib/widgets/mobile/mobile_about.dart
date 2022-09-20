import 'package:flutter/material.dart';
import 'package:live_clean_zambia/providers/site_data.dart';
import 'package:live_clean_zambia/widgets/desktop/text_title.dart';
import 'package:live_clean_zambia/widgets/desktop/toilet_location_card.dart';
import 'package:live_clean_zambia/widgets/mobile/image_banner_mobile.dart';
import 'package:live_clean_zambia/widgets/mobile/text_and_image_mobile.dart';

class MobileAbout extends StatelessWidget {
  const MobileAbout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Column(
        children: [
          const ImageBannerMobile(
              title: 'About Us',
              imgUrl:
                  'assets/images/christina-wocintechchat-com-rg1y72eKw6o-unsplash.jpg'),
          const TextAndImageMobile(),
          const SizedBox(height: 30.0),
          const TextAndImageMobile(),
          const SizedBox(height: 30.0),
          const TextAndImageMobile(),
          const SizedBox(height: 20.0),
          const TextTitle(title: 'Our Toilets', isMobile: true),
          const SizedBox(height: 20.0),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
                children: SiteData.toilets
                    .map((tl) => ToiletLocationCard(
                          tl: tl,
                          addSpace: true,
                          isMobile: true,
                        ))
                    .toList()),
          ),
        ],
      ),
    );
  }
}
