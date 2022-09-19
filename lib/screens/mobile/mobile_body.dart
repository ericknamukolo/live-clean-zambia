import 'package:flutter/material.dart';
import 'package:live_clean_zambia/constants/colors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

import '../../constants/text.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/mobile/mobile_appbar_item.dart';
import '../../widgets/mobile/mobile_home.dart';
import '../../widgets/mobile/mobile_services.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({
    Key? key,
  }) : super(key: key);

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F5FB),
      endDrawer: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10.0),
        width: MediaQuery.of(context).size.width * .45,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(MdiIcons.closeCircle,
                    color: kPrimaryColor, size: 30.0),
              ),
            ),
            const MobileAppBarItem(title: 'Home'),
            const MobileAppBarItem(title: 'What We Do'),
            const MobileAppBarItem(title: 'Gallery'),
            const MobileAppBarItem(title: 'Team'),
            const MobileAppBarItem(title: 'About'),
          ],
        ),
      ),
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
                Builder(
                  builder: (context) {
                    return GestureDetector(
                      onTap: () => Scaffold.of(context).openEndDrawer(),
                      child: const MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Icon(MdiIcons.menuOpen,
                            color: kPrimaryColor, size: 30.0),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: WebSmoothScroll(
              controller: _scrollController,
              child: SingleChildScrollView(
                controller: _scrollController,
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  children: const [
                    MobileHome(),
                    MobileServices(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
