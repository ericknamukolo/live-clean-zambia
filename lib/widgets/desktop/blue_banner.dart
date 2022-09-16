import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';

class BlueBanner extends StatelessWidget {
  final String title;
  final String des;
  const BlueBanner({
    Key? key,
    required this.des,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 7.19.h),
      width: double.infinity,
      height: 180,
      color: kSecondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: kTitleTextStyle.copyWith(
              fontSize: 30,
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
