// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:live_clean_zambia/providers/site_data.dart';
import 'package:provider/provider.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

import '../../widgets/desktop/desktop_projects.dart';
import '../../widgets/desktop/desktop_appbar.dart';
import '../../widgets/desktop/desktop_contact.dart';
import '../../widgets/desktop/desktop_footer.dart';
import '../../widgets/desktop/desktop_gallery.dart';
import '../../widgets/desktop/desktop_home.dart';
import '../../widgets/desktop/desktop_services.dart';
import '../../widgets/desktop/desktop_team.dart';
import '../../widgets/desktop/r_and_d_desktop.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  final _scrollController = ScrollController();
  final homeKey = GlobalKey();
  final servicesKey = GlobalKey();
  final rDkey = GlobalKey();
  final galleryKey = GlobalKey();
  final partnersKey = GlobalKey();
  final teamKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(seconds: 1));
  }

  // double _getPosition(GlobalKey key) {
  //   RenderBox box = key.currentContext!.findRenderObject() as RenderBox;
  //   Offset position = box.localToGlobal(Offset.zero); //this is global position
  //   double pos = position.dy;

  //   return pos - 80.0;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F5FB),
      body: Column(
        children: [
          DesktopAppBar(
            team: () => _scrollToSection(teamKey),
            home: () => _scrollToSection(homeKey),
            services: () => _scrollToSection(servicesKey),
            partners: () => _scrollToSection(partnersKey),
            gallery: () => _scrollToSection(galleryKey),
            research: () => _scrollToSection(rDkey),
          ),
          Consumer<SiteData>(
            builder: (context, data, __) => Expanded(
              child: WebSmoothScroll(
                controller: _scrollController,
                child: SingleChildScrollView(
                  controller: _scrollController,
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      DesktopHome(key: homeKey),
                      DesktopServices(key: servicesKey),
                      RAndDDesktop(key: rDkey),
                      DesktopGallery(key: galleryKey),
                      DesktopPartners(key: partnersKey),
                      DesktopTeam(key: teamKey),
                      const DesktopContact(),
                      const DesktopFooter(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
