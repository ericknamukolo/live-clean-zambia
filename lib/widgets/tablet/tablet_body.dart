import 'package:flutter/material.dart';

import '../../constants/text.dart';

class TabletBody extends StatelessWidget {
  const TabletBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Please Open the link on a computer\nThe tablet version is still under\ndevelopment',
          style: kBodyTextStyleGrey,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
