import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:live_clean_zambia/constants/colors.dart';
import 'package:live_clean_zambia/constants/text.dart';
import 'package:live_clean_zambia/models/service.dart';
import 'package:sizer/sizer.dart';

class ServiceCard extends StatelessWidget {
  final Service service;
  const ServiceCard({
    Key? key,
    required this.service,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool screen = MediaQuery.of(context).size.width > 1146;
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            blurRadius: 6.0,
            color: Color(0x29000000),
            offset: Offset(0.0, 3.0),
          ),
        ],
      ),
      height: screen ? 46.h : 320,
      width: screen ? 19.77.w : 270,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 2.15.h, horizontal: 0.73.w),
            height: screen ? 5.12.w : 70.0,
            width: screen ? 5.12.w : 70.0,
            decoration: BoxDecoration(
              color: const Color(0x26319DA0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: SvgPicture.asset(
              service.iconUrl,
              color: kPrimaryColor,
              height: 40.0,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            service.title,
            textAlign: TextAlign.center,
            style: kCardTitleTextStyle,
          ),
          const SizedBox(height: 10),
          Text(
            service.des,
            textAlign: TextAlign.center,
            style: kBodyTextStyleGrey,
          ),
        ],
      ),
    );
  }
}
