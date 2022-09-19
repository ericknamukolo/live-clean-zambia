import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';

class BlueBanner extends StatelessWidget {
  final String title;
  final String des;
  final bool isMobile;
  const BlueBanner({
    Key? key,
    required this.des,
    required this.title,
    this.isMobile = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 15.0 : 30.w, vertical: isMobile ? 25 : 7.19.h),
      width: double.infinity,
      height: isMobile ? 150 : 180,
      color: kSecondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: kTitleTextStyle.copyWith(
              fontSize: isMobile ? 20 : 30,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            des,
            style: kBodyTextStyleWhite,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
