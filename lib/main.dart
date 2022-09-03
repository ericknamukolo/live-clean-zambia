import 'package:flutter/material.dart';

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
      home: const Scaffold(
        body: Center(
          child: Text(
            'Hello world',
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
