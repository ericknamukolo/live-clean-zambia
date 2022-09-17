import 'package:flutter/material.dart';
import 'package:live_clean_zambia/providers/site_data.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';

class ImageBanner extends StatelessWidget {
  final String img;
  final String title;
  final String des;
  const ImageBanner({
    Key? key,
    required this.des,
    required this.title,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool screen = MediaQuery.of(context).size.width > 1146;

    return Container(
      height: 350,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: screen ? 31.4.w : 200.0),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        image: DecorationImage(
          alignment: Alignment.bottomCenter,
          image: AssetImage(img),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            const Color(0xff65A234).withOpacity(0.5),
            BlendMode.srcOver,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: kTitleTextStyle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20.0),
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
