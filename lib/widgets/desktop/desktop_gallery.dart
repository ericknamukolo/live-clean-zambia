import 'package:flutter/material.dart';
import 'package:live_clean_zambia/constants/colors.dart';
import 'package:live_clean_zambia/providers/site_data.dart';
import 'package:live_clean_zambia/widgets/custom_button.dart';
import 'package:live_clean_zambia/widgets/desktop/image_banner.dart';

import '../../constants/text.dart';

class DesktopGallery extends StatelessWidget {
  const DesktopGallery({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80.0),
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'Gallery',
            style: kTitleTextStyle.copyWith(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: kSecondaryColor,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 400.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: kBodyTextStyleGrey,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 40.0),
          GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 140.0),
            shrinkWrap: true,
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
            ),
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                color: kPrimaryColor,
                image: DecorationImage(
                  image: AssetImage(SiteData.gallery[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 80.0),
          const ImageBanner(),
          const SizedBox(height: 100.0),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 140.0),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                          style:
                              kBodyTitleTextStyleGrey.copyWith(fontSize: 24.0),
                        ),
                        const SizedBox(height: 30.0),
                        const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dui faucibus in ornare quam viverra orci sagittis. Posuere morbi leo urna molestie at elementum eu facilisis sed. Nulla facilisi morbi tempus iaculis urna. Odio aenean sed adipiscing diam donec. Blandit aliquam etiam erat velit scelerisque in dictum. Facilisi cras fermentum odio eu feugiat. Blandit massa enim nec dui. Faucibus pulvinar elementum integer enim neque volutpat ac. Sed augue lacus viverra vitae congue. Eu consequat ac felis donec et odio pellentesque. Leo vel orci porta non pulvinar neque laoreet suspendisse.',
                          style: kBodyTextStyleGrey,
                        ),
                        const Spacer(),
                        const CustomButton(text: 'Learn More'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 40.0),
                      width: 556,
                      height: 370,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        boxShadow: [
                          BoxShadow(
                            color: kPrimaryColor.withOpacity(.4),
                            offset: const Offset(-20.0, 20.0),
                            blurStyle: BlurStyle.solid,
                          ),
                        ],
                        image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/pexels-andrea-piacquadio-3764545.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
