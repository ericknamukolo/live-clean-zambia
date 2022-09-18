import 'package:flutter/material.dart';
import 'package:live_clean_zambia/models/toilet.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';

class ToiletLocationCard extends StatelessWidget {
  final Toilet tl;
  final bool addSpace;
  const ToiletLocationCard({
    Key? key,
    required this.tl,
    this.addSpace = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 280,
          width: 500,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            image: DecorationImage(
              image: AssetImage(tl.img),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 15.0),
        Text(
          tl.name,
          style: kBodyTitleTextStyleGrey.copyWith(
            color: kPrimaryColor,
          ),
        ),
        const SizedBox(height: 10.0),
        const Text(
          'Monday - Friday : 06:00 - 19:00 hrs',
          style: kBodyTextStyleGrey,
        ),
        const SizedBox(height: 10.0),
        const Text(
          'Saturday : 06:00 - 18:00 hrs',
          style: kBodyTextStyleGrey,
        ),
        const SizedBox(height: 10.0),
        Row(
          children: [
            const Text(
              'Sunday : ',
              style: kBodyTextStyleGrey,
            ),
            Text(
              'Closed',
              style: kBodyTextStyleGrey.copyWith(
                color: Theme.of(context).errorColor,
              ),
            ),
          ],
        ),
        SizedBox(height: addSpace ? 30.0 : 0.0),
      ],
    );
  }
}
