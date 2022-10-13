import 'package:flutter/material.dart';
import 'package:live_clean_zambia/constants/colors.dart';
import 'package:live_clean_zambia/constants/text.dart';
import 'package:live_clean_zambia/widgets/desktop/image_banner.dart';
import 'package:live_clean_zambia/widgets/desktop/text_title.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../providers/site_data.dart';
import 'toilet_location_card.dart';

class DesktopPartners extends StatelessWidget {
  const DesktopPartners({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool screen = MediaQuery.of(context).size.width > 1146;
    return Column(
      children: [
        const ImageBanner(
          title: 'Partners',
          des:
              'We have successfully built strategic partnerships that have expanded our ability to provide safe toilets for peri-urban dwellers.',
          img:
              'assets/images/christina-wocintechchat-com-rg1y72eKw6o-unsplash.jpg',
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 100.0),
          child: Column(
            children: [
              GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 140.0),
                shrinkWrap: true,
                itemCount: SiteData.partners.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 30.0,
                ),
                itemBuilder: (context, index) => MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () async {
                      Uri url = Uri.parse(SiteData.partners[index].link);
                      await launchUrl(url);
                    },
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.all(30.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(SiteData.partners[index].img),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          SiteData.partners[index].name,
                          textAlign: TextAlign.center,
                          style: kBodyTitleTextStyleGrey.copyWith(
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 60.0),
              const TextTitle(
                  title: 'Our Toilets',
                  des:
                      'Visit any of our clean and safe toilets in your areas.'),
              const SizedBox(height: 40.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.2.w),
                child: Column(
                  children: screen
                      ? [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: SiteData.toilets
                                .getRange(0, 2)
                                .map(
                                  (tl) => ToiletLocationCard(tl: tl),
                                )
                                .toList(),
                          ),
                          const SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: SiteData.toilets
                                .getRange(2, 3)
                                .map(
                                  (tl) => ToiletLocationCard(tl: tl),
                                )
                                .toList(),
                          ),
                        ]
                      : SiteData.toilets
                          .map((tl) =>
                              ToiletLocationCard(tl: tl, addSpace: true))
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
