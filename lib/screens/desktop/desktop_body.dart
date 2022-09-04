import 'package:flutter/material.dart';

import '../../widgets/desktop/desktop_appbar.dart';
import '../../widgets/desktop/desktop_home.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF3F5FB),
      body: Column(
        children: [
          const DesktopAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  DesktopHome(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
