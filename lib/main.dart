import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:live_clean_zambia/providers/site_data.dart';
import 'package:live_clean_zambia/screens/loading_screen.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const LiveCleanZambia());
}

class LiveCleanZambia extends StatelessWidget {
  const LiveCleanZambia({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SiteData()),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) => MaterialApp(
          debugShowCheckedModeBanner: false,
          //   scrollBehavior: MyCustomScrollBehavior(),
          title: 'Live Clean Zambia',
          theme: ThemeData(
            fontFamily: 'Montserrat',
          ),
          home: const LoadingScreen(),
        ),
      ),
    );
  }
}
