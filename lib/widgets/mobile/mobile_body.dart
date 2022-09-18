import 'package:flutter/material.dart';
import 'package:live_clean_zambia/constants/colors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F5FB),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            height: 60.0,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 6.0,
                  color: Color(0x29000000),
                  offset: Offset(0.0, 3.0),
                ),
              ],
            ),
            child: Row(
              children: [
                Image.asset('assets/images/logo.png', width: 120.0),
                const Spacer(),
                const Icon(MdiIcons.menuOpen, color: kPrimaryColor, size: 30.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
