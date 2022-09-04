import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
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
        'Contact Us',
        style: kBodyTitleTextStyleGrey.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
