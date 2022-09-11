import 'package:flutter/material.dart';
import 'package:live_clean_zambia/constants/text.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Please Open the link on a computer\nThe mobile version is still under\ndevelopment',
          style: kBodyTextStyleGrey,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
