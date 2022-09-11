import 'package:flutter/material.dart';
import 'package:live_clean_zambia/constants/colors.dart';
import 'package:live_clean_zambia/constants/text.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

import '../../widgets/desktop/desktop_about.dart';
import '../../widgets/desktop/desktop_appbar.dart';
import '../../widgets/desktop/desktop_contact.dart';
import '../../widgets/desktop/desktop_gallery.dart';
import '../../widgets/desktop/desktop_home.dart';
import '../../widgets/desktop/desktop_services.dart';
import '../../widgets/desktop/desktop_team.dart';
import '../../widgets/desktop/text_title.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F5FB),
      body: Column(
        children: [
          const DesktopAppBar(),
          Expanded(
            child: WebSmoothScroll(
              controller: _scrollController,
              child: SingleChildScrollView(
                controller: _scrollController,
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  children: const [
                    DesktopHome(),
                    DesktopServices(),
                    DesktopGallery(),
                    DesktopTeam(),
                    DesktopAbout(),
                    DesktopContact(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
