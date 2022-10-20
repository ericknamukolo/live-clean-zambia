import 'package:flutter/material.dart';
import 'package:live_clean_zambia/constants/colors.dart';
import 'package:live_clean_zambia/constants/text.dart';

import '../../models/nav_btn.dart';

class PhotoGalleryScreen extends StatefulWidget {
  const PhotoGalleryScreen({super.key});

  @override
  State<PhotoGalleryScreen> createState() => _PhotoGalleryScreenState();
}

class _PhotoGalleryScreenState extends State<PhotoGalleryScreen> {
  final PageController _pageController = PageController();

  List<NaviButton> navBtns = [
    NaviButton(title: 'On Site', isSelected: true, pageNumber: 0),
    NaviButton(title: 'Projects', pageNumber: 1),
    NaviButton(title: 'Events', pageNumber: 2),
    NaviButton(title: 'Bussiness', pageNumber: 3),
  ];

  void selectNav(NaviButton nav) {
    setState(() {
      for (var element in navBtns) {
        element.isSelected = false;
      }
      nav.isSelected = true;
    });
  }

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreyBg,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 140.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Opacity(
                    opacity: 0.0,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kGreyBg,
                      ),
                      child: Icon(
                        Icons.close,
                        color: kPrimaryColor,
                        size: 45,
                      ),
                    ),
                  ),
                  Text(
                    'Photo Gallery',
                    style: kTitleTextStyle.copyWith(color: kSecondaryColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 6.0,
                              color: Color(0x29000000),
                              offset: Offset(0.0, 3.0),
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.close,
                          color: kPrimaryColor,
                          size: 45,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                style: kBodyTextStyleGrey,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: navBtns
                    .map((nav) => NavButton(
                          nav: nav,
                          click: () {
                            selectNav(nav);
                            _pageController.animateToPage(nav.pageNumber,
                                duration: const Duration(seconds: 1),
                                curve: Curves.ease);
                          },
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavButton extends StatelessWidget {
  final NaviButton nav;
  final Function() click;
  const NavButton({
    Key? key,
    required this.nav,
    required this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: click,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
          margin: const EdgeInsets.symmetric(horizontal: 15.0),
          decoration: BoxDecoration(
            color: nav.isSelected ? kPrimaryColor : Colors.white,
            boxShadow: const [
              BoxShadow(
                blurRadius: 6.0,
                color: Color(0x29000000),
                offset: Offset(0.0, 3.0),
              ),
            ],
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: Text(
            nav.title,
            style: nav.isSelected ? kBodyTextStyleWhite : kBodyTextStyleGrey,
          ),
        ),
      ),
    );
  }
}
