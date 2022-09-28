import 'package:flutter/material.dart';
import 'package:live_clean_zambia/providers/site_data.dart';
import 'package:live_clean_zambia/widgets/desktop/service_card.dart';
import '../desktop/blue_banner.dart';

class MobileServices extends StatelessWidget {
  const MobileServices({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BlueBanner(
          title: 'What We Do',
          des: SiteData.whatWeDo,
          isMobile: true,
        ),
        const SizedBox(height: 50),
        Column(
          children: SiteData.services
              .map((service) => ServiceCard(service: service, isMobile: true))
              .toList(),
        ),
      ],
    );
  }
}
