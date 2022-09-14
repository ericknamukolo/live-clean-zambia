import 'package:flutter/material.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

import '../../widgets/desktop/desktop_about.dart';
import '../../widgets/desktop/desktop_appbar.dart';
import '../../widgets/desktop/desktop_contact.dart';
import '../../widgets/desktop/desktop_footer.dart';
import '../../widgets/desktop/desktop_gallery.dart';
import '../../widgets/desktop/desktop_home.dart';
import '../../widgets/desktop/desktop_services.dart';
import '../../widgets/desktop/desktop_team.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  final _scrollController = ScrollController();
  final homeKey = GlobalKey();
  final servicesKey = GlobalKey();
  final galleryKey = GlobalKey();
  final teamKey = GlobalKey();
  final aboutKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F5FB),
      body: Column(
        children: [
          DesktopAppBar(
            about: () => _scrollToSection(aboutKey),
            home: () => _scrollToSection(homeKey),
            services: () => _scrollToSection(servicesKey),
            team: () => _scrollToSection(teamKey),
            gallery: () => _scrollToSection(galleryKey),
          ),
          Expanded(
            child: WebSmoothScroll(
              controller: _scrollController,
              child: SingleChildScrollView(
                controller: _scrollController,
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    DesktopHome(key: homeKey),
                    DesktopServices(key: servicesKey),
                    DesktopGallery(key: galleryKey),
                    DesktopTeam(key: teamKey),
                    DesktopAbout(key: aboutKey),
                    const DesktopContact(),
                    const DesktopFooter(),
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
