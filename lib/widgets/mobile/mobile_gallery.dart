import 'package:flutter/material.dart';
import 'package:live_clean_zambia/providers/site_data.dart';

import '../desktop/text_title.dart';

class MobileGallery extends StatelessWidget {
  const MobileGallery({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      color: Colors.white,
      child: Column(
        children: [
          const TextTitle(title: 'Gallery', isMobile: true),
          const SizedBox(height: 10.0),
          Column(
            children: SiteData.gallery
                .map(
                  (gal) => Container(
                    width: double.infinity,
                    height: 250,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 15.0),
                    child: Image.asset(
                      gal,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
