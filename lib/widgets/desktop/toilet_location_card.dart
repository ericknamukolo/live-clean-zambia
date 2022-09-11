import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';

class ToiletLocationCard extends StatelessWidget {
  final String place;
  const ToiletLocationCard({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 280,
          width: 500,
          decoration: const BoxDecoration(
            color: kPrimaryColor,
            image: DecorationImage(
              image: AssetImage('assets/images/img.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 20.0),
        Text(
          place,
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
      ],
    );
  }
}
