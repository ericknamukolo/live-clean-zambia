import 'package:flutter/material.dart';
import 'package:live_clean_zambia/constants/text.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff15202B),
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        children: [
          Row(
            children: const [],
          ),
          Text(
            '© Live Clean Zambia, 2022.',
            style: kBodyTextStyleWhite.copyWith(
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 10.0),
          TextButton(
            onPressed: () async {
              Uri url = Uri.parse('https://ericknamukolo.github.io/');
              await launchUrl(url);
            },
            child: Text(
              'Built by Erick Namukolo',
              style: kBodyTextStyleGrey.copyWith(
                letterSpacing: 1.0,
                fontSize: 13.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
