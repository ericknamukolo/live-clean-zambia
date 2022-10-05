import 'package:flutter/material.dart';
import 'package:live_clean_zambia/providers/site_data.dart';
import 'package:provider/provider.dart';
import 'appbar_item.dart';
import 'package:sizer/sizer.dart';

class DesktopAppBar extends StatelessWidget {
  final Function() home;
  final Function() services;
  final Function() gallery;
  final Function() projects;
  final Function() research;
  final Function() team;
  const DesktopAppBar({
    Key? key,
    required this.team,
    required this.services,
    required this.gallery,
    required this.projects,
    required this.home,
    required this.research,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.2.w),
      width: double.infinity,
      height: 80.0,
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
      child: Consumer<SiteData>(
        builder: (context, data, __) => Row(
          children: [
            Image.asset('assets/images/logo.png', width: 180),
            const Spacer(),
            AppBarItem(label: 'Home', click: home, indi: data.pages[0]),
            SizedBox(width: 2.19.w),
            AppBarItem(
                label: 'What We Do', click: services, indi: data.pages[1]),
            SizedBox(width: 2.19.w),
            AppBarItem(
                label: 'Research & Development',
                click: research,
                indi: data.pages[2]),
            SizedBox(width: 2.19.w),
            AppBarItem(label: 'Gallery', click: gallery, indi: data.pages[3]),
            SizedBox(width: 2.19.w),
            AppBarItem(label: 'Projects', click: projects, indi: data.pages[4]),
            SizedBox(width: 2.19.w),
            AppBarItem(label: 'Team', click: team, indi: data.pages[5]),
          ],
        ),
      ),
    );
  }
}
