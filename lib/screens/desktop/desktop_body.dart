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
  final galleryKey = GlobalKey();
  final projectsKey = GlobalKey();
  final teamKey = GlobalKey();

  void _scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(seconds: 1));
  }

  double _getPosition(GlobalKey key) {
    RenderBox box = key.currentContext!.findRenderObject() as RenderBox;
    Offset position = box.localToGlobal(Offset.zero); //this is global position
    double pos = position.dy;

    return pos - 80.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F5FB),
      body: Column(
        children: [
          DesktopAppBar(
            about: () => _scrollToSection(teamKey),
            home: () => _scrollToSection(homeKey),
            services: () => _scrollToSection(servicesKey),
            team: () => _scrollToSection(projectsKey),
            gallery: () => _scrollToSection(galleryKey),
          ),
          Consumer<SiteData>(
            builder: (context, data, __) => Expanded(
              child: NotificationListener<ScrollNotification>(
                onNotification: (ScrollNotification info) {
                  if (_getPosition(homeKey) <= 0.0 &&
                      _getPosition(servicesKey) > 0.0) {
                    data.triggerSelection(0);
                  } else if (_getPosition(servicesKey) <= 0.0 &&
                      _getPosition(galleryKey) > 0.0) {
                    data.triggerSelection(1);
                  } else if (_getPosition(galleryKey) <= 0.0 &&
                      _getPosition(projectsKey) > 0.0) {
                    data.triggerSelection(2);
                  } else if (_getPosition(projectsKey) <= 0.0 &&
                      _getPosition(teamKey) > 0.0) {
                    data.triggerSelection(3);
                  } else if (_getPosition(teamKey) <= 0.0) {
                    data.triggerSelection(4);
                  }

                  return true;
                },
                child: WebSmoothScroll(
                  controller: _scrollController,
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    physics: const NeverScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        DesktopHome(key: homeKey),
                        DesktopServices(key: servicesKey),
                        RAndDDesktop(),
                        DesktopGallery(key: galleryKey),
                        DesktopProjects(key: projectsKey),
                        DesktopTeam(key: teamKey),
                        const DesktopContact(),
                        const DesktopFooter(),
                      ],
                    ),
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
