import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        minimumSize: const Size(280, 60),
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
