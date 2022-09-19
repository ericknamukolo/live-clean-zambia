import 'package:flutter/material.dart';
import 'package:live_clean_zambia/constants/colors.dart';

import '../../constants/text.dart';
import '../custom_button.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .8,
      child: Image.asset(
        'assets/images/home.jpg',
        width: double.infinity,
        fit: BoxFit.cover,
        color: kPrimaryColor.withOpacity(.7),
        colorBlendMode: BlendMode.modulate,
      ),
    );
  }
}
