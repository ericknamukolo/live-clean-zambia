import 'package:flutter/material.dart';
import 'package:live_clean_zambia/screens/desktop/desktop_body.dart';
import 'package:live_clean_zambia/screens/loading_screen.dart';
import 'package:live_clean_zambia/widgets/responsive_layout.dart';

void main() {
  runApp(const LiveCleanZambia());
}

class LiveCleanZambia extends StatelessWidget {
  const LiveCleanZambia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Live Clean Zambia',
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      home: const LoadingScreen(),
    );
  }
}
