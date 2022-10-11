import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:live_clean_zambia/constants/text.dart';
import 'package:live_clean_zambia/providers/site_data.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants/colors.dart';
import 'desktop_contact.dart';

class DesktopHome extends StatefulWidget {
  const DesktopHome({
    Key? key,
  }) : super(key: key);

  @override
  State<DesktopHome> createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {
  int pageNumber = 0;
  @override
  Widget build(BuildContext context) {
    final CarouselController controller = CarouselController();
    return Stack(
      children: [
        CarouselSlider(
          carouselController: controller,
          options: CarouselOptions(
            height: 75.h,
            viewportFraction: 1.0,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 8),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: false,
            onPageChanged: (val, _) {
              setState(() {
                pageNumber = val;
              });
            },
          ),
          items: SiteData.home.map((url) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(url),
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.medium,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.3),
                        BlendMode.srcOver,
                      ),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        Positioned.fill(
          bottom: 50,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedSmoothIndicator(
              activeIndex: pageNumber,
              count: SiteData.home.length,
              effect: ScrollingDotsEffect(
                dotWidth: 10.0,
                dotHeight: 10.0,
                dotColor: Colors.white,
                activeDotColor: kPrimaryColor,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 2.88.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  SiteData.homeHeader,
                  style: kTitleTextStyle.copyWith(
                    fontSize: 8.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  SiteData.homeDes,
                  style: kBodyTextStyleWhite,
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconBtn(
                      click: () async {
                        Uri url = Uri.parse(
                            'https://youtube.com/channel/UC0FOT2lyKqYHc1epLkY_LBg');
                        await launchUrl(url);
                      },
                      icon: MdiIcons.youtube,
                      isWhite: true,
                    ),
                    const SizedBox(width: 14.0),
                    IconBtn(
                      click: () async {
                        Uri url = Uri.parse('https://twitter.com/LiveCleanZM');
                        await launchUrl(url);
                      },
                      icon: MdiIcons.twitter,
                      isWhite: true,
                    ),
                    const SizedBox(width: 14.0),
                    IconBtn(
                      click: () async {
                        Uri url = Uri.parse(
                            'https://linkedin.com/company/live-clean-initiatives/?viewAsMember=true');
                        await launchUrl(url);
                      },
                      icon: MdiIcons.linkedin,
                      isWhite: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
