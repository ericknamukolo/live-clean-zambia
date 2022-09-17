import 'package:flutter/material.dart';
import 'package:live_clean_zambia/providers/site_data.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';
import '../custom_button.dart';

class TextAndImage extends StatelessWidget {
  final bool hasbtn;
  final bool isReversed;
  const TextAndImage({
    Key? key,
    this.hasbtn = false,
    this.isReversed = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool screen = MediaQuery.of(context).size.width > 1146;
    //  SiteData.getWidth(140.0);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.24.w),
      child: IntrinsicHeight(
        child: screen
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: isReversed
                    ? [
                        ImgPart(isReversed: isReversed),
                        TextPart(hasbtn: hasbtn),
                      ]
                    : [
                        TextPart(hasbtn: hasbtn),
                        ImgPart(isReversed: isReversed),
                      ],
              )
            : Column(
                children: [
                  TextPart(hasbtn: hasbtn),
                  ImgPart(isReversed: isReversed),
                ],
              ),
      ),
    );
  }
}

class ImgPart extends StatelessWidget {
  final bool isReversed;
  const ImgPart({
    Key? key,
    required this.isReversed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool screen = MediaQuery.of(context).size.width > 1146;
    return Expanded(
      child: Container(
        margin: screen
            ? EdgeInsets.only(
                left: isReversed ? 0.0 : 40.0, right: isReversed ? 40.0 : 0.0)
            : null,
        width: screen ? 40.7.w : 500,
        height: screen ? 27.086.w : 280,
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
    );
  }
}

class TextPart extends StatelessWidget {
  const TextPart({
    Key? key,
    required this.hasbtn,
  }) : super(key: key);

  final bool hasbtn;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            style: kBodyTitleTextStyleGrey.copyWith(fontSize: 24.0),
          ),
          const SizedBox(height: 30.0),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dui faucibus in ornare quam viverra orci sagittis. Posuere morbi leo urna molestie at elementum eu facilisis sed. Nulla facilisi morbi tempus iaculis urna. Odio aenean sed adipiscing diam donec. Blandit aliquam etiam erat velit scelerisque in dictum. Facilisi cras fermentum odio eu feugiat. Blandit massa enim nec dui. Faucibus pulvinar elementum integer enim neque volutpat ac. Sed augue lacus viverra vitae congue. Eu consequat ac felis donec et odio pellentesque. Leo vel orci porta non pulvinar neque laoreet suspendisse.',
            style: kBodyTextStyleGrey,
          ),
          const Spacer(),
          const SizedBox(height: 20.0),
          Visibility(
            visible: hasbtn,
            child: const CustomButton(text: 'Learn More'),
          ),
        ],
      ),
    );
  }
}
