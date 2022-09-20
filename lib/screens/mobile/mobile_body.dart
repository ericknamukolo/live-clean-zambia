import 'package:flutter/material.dart';
import 'package:live_clean_zambia/constants/colors.dart';
import 'package:live_clean_zambia/providers/site_data.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import '../../widgets/mobile/mobile_about.dart';
import '../../widgets/mobile/mobile_appbar_item.dart';
import '../../widgets/mobile/mobile_gallery.dart';
import '../../widgets/mobile/mobile_home.dart';
import '../../widgets/mobile/mobile_services.dart';
import '../../widgets/mobile/mobile_team.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({
    Key? key,
  }) : super(key: key);

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
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

  double _getPosition(GlobalKey key) {
    RenderBox box = key.currentContext!.findRenderObject() as RenderBox;
    Offset position = box.localToGlobal(Offset.zero); //this is global position
    double pos = position.dy;

    return pos - 60.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F5FB),
      endDrawer: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10.0),
        width: MediaQuery.of(context).size.width * .45,
        color: Colors.white,
        child: Consumer<SiteData>(
          builder: (context, data, __) => Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(MdiIcons.closeCircle,
                      color: kPrimaryColor, size: 30.0),
                ),
              ),
              MobileAppBarItem(
                  title: 'Home',
                  indi: data.pages[0],
                  click: () {
                    Navigator.of(context).pop();
                    _scrollToSection(homeKey);
                  }),
              MobileAppBarItem(
                  title: 'What We Do',
                  indi: data.pages[1],
                  click: () {
                    Navigator.of(context).pop();
                    _scrollToSection(servicesKey);
                  }),
              MobileAppBarItem(
                  title: 'Gallery',
                  indi: data.pages[2],
                  click: () {
                    Navigator.of(context).pop();
                    _scrollToSection(galleryKey);
                  }),
              MobileAppBarItem(
                  title: 'Team',
                  indi: data.pages[3],
                  click: () {
                    Navigator.of(context).pop();
                    _scrollToSection(teamKey);
                  }),
              MobileAppBarItem(
                  title: 'About',
                  indi: data.pages[4],
                  click: () {
                    Navigator.of(context).pop();
                    _scrollToSection(aboutKey);
                  }),
            ],
          ),
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
                      _getPosition(teamKey) > 0.0) {
                    data.triggerSelection(2);
                  } else if (_getPosition(teamKey) <= 0.0 &&
                      _getPosition(aboutKey) > 0.0) {
                    data.triggerSelection(3);
                  } else if (_getPosition(aboutKey) <= 0.0) {
                    data.triggerSelection(4);
                  }
                  return true;
                },
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    children: [
                      MobileHome(key: homeKey),
                      MobileServices(key: servicesKey),
                      MobileGallery(key: galleryKey),
                      MobileTeam(key: teamKey),
                      MobileAbout(key: aboutKey),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
