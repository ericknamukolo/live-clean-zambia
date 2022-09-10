import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';

class TeamCard extends StatelessWidget {
  const TeamCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 240,
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
      child: Column(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: kPrimaryColor, width: 3.0),
              color: kPrimaryColor,
              image: const DecorationImage(
                image: AssetImage(
                    'assets/images/junior-reis-GVsO8wqNuAw-unsplash.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            'Mrs Grace Chanda',
            style: kCardTitleTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            'FOUNDER & CEO',
            style: kCardTitleTextStyle.copyWith(
              fontSize: 14,
              color: const Color(0xffB4BAC3),
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
            style: kHintTextStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
