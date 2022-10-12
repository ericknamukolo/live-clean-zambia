import 'package:flutter/material.dart';
import 'package:live_clean_zambia/providers/site_data.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';
import '../custom_button.dart';

class TextAndImage extends StatelessWidget {
  final bool hasbtn;
  final bool isReversed;
  final String title;
  final String des;
  final String img;
  const TextAndImage({
    Key? key,
    this.hasbtn = false,
    this.isReversed = false,
    required this.title,
    required this.des,
    required this.img,
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
                        ImgPart(isReversed: isReversed, img: img),
                        TextPart(hasbtn: hasbtn, des: des, title: title),
                      ]
                    : [
                        TextPart(hasbtn: hasbtn, des: des, title: title),
                        ImgPart(isReversed: isReversed, img: img),
                      ],
              )
            : Column(
                children: [
                  TextPart(hasbtn: hasbtn, des: des, title: title),
                  ImgPart(isReversed: isReversed, img: img),
                ],
              ),
      ),
    );
  }
}

class ImgPart extends StatelessWidget {
  final bool isReversed;
  final String img;
  const ImgPart({
    Key? key,
    required this.isReversed,
    required this.img,
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
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class TextPart extends StatelessWidget {
  final String title;
  final String des;
  const TextPart({
    Key? key,
    required this.hasbtn,
    required this.title,
    required this.des,
  }) : super(key: key);

  final bool hasbtn;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: kBodyTitleTextStyleGrey.copyWith(fontSize: 24.0),
          ),
          const SizedBox(height: 30.0),
          Text(
            des,
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
