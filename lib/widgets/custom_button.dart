import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final bool isMobile;
  const CustomButton({
    Key? key,
    required this.text,
    this.isMobile = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        minimumSize: Size(280, isMobile ? 50 : 60),
      ),
      child: Text(
        text,
        style: kBodyTitleTextStyleGrey.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
