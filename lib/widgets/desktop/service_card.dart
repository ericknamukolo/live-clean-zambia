import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:live_clean_zambia/constants/colors.dart';
import 'package:live_clean_zambia/constants/text.dart';
import 'package:live_clean_zambia/models/service.dart';

class ServiceCard extends StatelessWidget {
  final Service service;
  const ServiceCard({
    Key? key,
    required this.service,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
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
      height: 320,
      width: 270,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            height: 70,
            width: 70,
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
