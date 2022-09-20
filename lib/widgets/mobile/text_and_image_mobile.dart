import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/text.dart';

class TextAndImageMobile extends StatelessWidget {
  const TextAndImageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: const [
          TextPart(),
          ImgPart(),
        ],
      ),
    );
  }
}

class ImgPart extends StatelessWidget {
  const ImgPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      width: MediaQuery.of(context).size.width * .8,
      height: 220,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        boxShadow: [
          BoxShadow(
            color: kPrimaryColor.withOpacity(.4),
            offset: const Offset(-20.0, 20.0),
            blurStyle: BlurStyle.solid,
          ),
        ],
        image: const DecorationImage(
          image:
              AssetImage('assets/images/pexels-andrea-piacquadio-3764545.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class TextPart extends StatelessWidget {
  const TextPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10.0),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          style: kBodyTitleTextStyleGrey.copyWith(fontSize: 22.0),
        ),
        const SizedBox(height: 10.0),
        const Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dui faucibus in ornare quam viverra orci sagittis. Posuere morbi leo urna molestie at elementum eu facilisis sed. Nulla facilisi morbi tempus iaculis urna. Odio aenean sed adipiscing diam donec. Blandit aliquam etiam erat velit scelerisque in dictum. Facilisi cras fermentum odio eu feugiat. Blandit massa enim nec dui. Faucibus pulvinar elementum integer enim neque volutpat ac. Sed augue lacus viverra vitae congue. Eu consequat ac felis donec et odio pellentesque. Leo vel orci porta non pulvinar neque laoreet suspendisse.',
          style: kBodyTextStyleGrey,
        ),
        const SizedBox(height: 15.0),
      ],
    );
  }
}
