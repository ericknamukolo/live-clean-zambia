import 'dart:async';

import 'package:flutter/material.dart';
import 'package:live_clean_zambia/screens/desktop/desktop_body.dart';

import '../widgets/responsive_layout.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ResponsiveLayout(
              desktopBody: DesktopBody(),
              mobileBody: Text('Mobile'),
              tabletBody: Text('Table'),
            ),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  void didChangeDependencies() {
    precacheImage(const AssetImage('assets/images/home.jpg'), context);
    precacheImage(const AssetImage('assets/images/gallery1.jpg'), context);
    precacheImage(const AssetImage('assets/images/gallery2.jpg'), context);
    precacheImage(const AssetImage('assets/images/gallery3.jpg'), context);
    precacheImage(const AssetImage('assets/images/gallery4.jpg'), context);
    precacheImage(const AssetImage('assets/images/gallery5.jpg'), context);
    precacheImage(const AssetImage('assets/images/gallery6.jpg'), context);
    precacheImage(
        const AssetImage('assets/images/junior-reis-GVsO8wqNuAw-unsplash.jpg'),
        context);
    precacheImage(const AssetImage('assets/images/img.jpg'), context);
    precacheImage(const AssetImage('assets/images/wash.jpg'), context);
    precacheImage(
        const AssetImage(
            'assets/images/christina-wocintechchat-com-rg1y72eKw6o-unsplash.jpg'),
        context);
    precacheImage(
        const AssetImage('assets/images/pexels-andrea-piacquadio-3764545.jpg'),
        context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Loading'),
      ),
    );
  }
}
