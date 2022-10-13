import 'dart:html';

import 'package:flutter/material.dart';
import 'package:live_clean_zambia/models/toilet.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;
import '../../constants/colors.dart';
import '../../constants/text.dart';

class ToiletLocationCard extends StatefulWidget {
  final Toilet tl;
  final bool addSpace;
  final bool isMobile;
  const ToiletLocationCard({
    Key? key,
    required this.tl,
    this.addSpace = false,
    this.isMobile = false,
  }) : super(key: key);

  @override
  State<ToiletLocationCard> createState() => _ToiletLocationCardState();
}

class _ToiletLocationCardState extends State<ToiletLocationCard> {
  @override
  void initState() {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(widget.tl.id, (int viewId) {
      return IFrameElement()
        ..style.width = '100%'
        ..style.height = '100%'
        ..src = widget.tl.link
        ..style.border = 'none';
    });
    super.initState();
  }

  // Positioned.fill(
  //       child: Container(
  //         height: 500,
  //         width: 600,
  //         child: HtmlElementView(viewType: 'openstreetmap'),
  //       ),
  //     ),
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 280,
          width: widget.isMobile ? double.infinity : 500,
          child: HtmlElementView(viewType: widget.tl.id),
        ),
        const SizedBox(height: 15.0),
        Container(
          width: widget.isMobile ? double.infinity : 500,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.tl.name,
                style: kBodyTitleTextStyleGrey.copyWith(
                  color: kPrimaryColor,
                ),
              ),
              IconButton(
                onPressed: () async {
                  Uri url = Uri.parse(widget.tl.link);
                  await launchUrl(url);
                },
                icon: Icon(
                  MdiIcons.googleMaps,
                  color: kPrimaryColor,
                  size: 35.0,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10.0),
        const Text(
          'Monday - Friday : 06:00 - 19:00 hrs',
          style: kBodyTextStyleGrey,
        ),
        const SizedBox(height: 10.0),
        const Text(
          'Saturday : 06:00 - 18:00 hrs',
          style: kBodyTextStyleGrey,
        ),
        const SizedBox(height: 10.0),
        const Text(
          'Holidays : 07:00hrs - 18:00hrs',
          style: kBodyTextStyleGrey,
        ),
        const SizedBox(height: 10.0),
        Row(
          children: [
            const Text(
              'Sunday : ',
              style: kBodyTextStyleGrey,
            ),
            Text(
              'Closed',
              style: kBodyTextStyleGrey.copyWith(
                color: Theme.of(context).errorColor,
              ),
            ),
          ],
        ),
        SizedBox(height: widget.addSpace ? 35.0 : 0.0),
      ],
    );
  }
}
