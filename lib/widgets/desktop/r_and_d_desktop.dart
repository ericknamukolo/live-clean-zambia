import 'package:flutter/material.dart';

import 'image_banner.dart';
import 'text_and_image.dart';

class RAndDDesktop extends StatelessWidget {
  const RAndDDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 80.0),
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: const [
          ImageBanner(
            des:
                'We service over 21,600 toilet visits each week. The wealth of data and waste resource available to us is too good to go untapped.',
            img: 'assets/images/wash.jpg',
            title: 'Research & Development',
          ),
          SizedBox(height: 100.0),
          TextAndImage(
            hasbtn: false,
            img: 'assets/images/bio.jpg',
            title: 'Poop to Power',
            des:
                'We had started on a journey to convert our waste into biofuel in 2018 with digesters. The idea was to use a biodigester toilet system that operates on an anaerobic digestive process to break down and clean toilet waste. We were unsuccessful with this venture due to a lack of financing. We needed an expert to help us set up the digesters effectively, and we could not afford the associated cost.\n\nA second attempt to make use of the waste was to set up a sewer treatment plant, in 2019. Our hope was to create a closed loop that would break down most of the waste into water that would then be recycled back into the toilet system and sludge that could act an as an agricultural input. We experienced unprecedented amounts of electricity load shedding between 2019 and 2021 which affected the effectiveness of the sewer treatment plant we procured in 2019. We did not have the financial capacity to procure the solar equipment needed to successfully commission the venture.\n\nWe are currently in a fundraising round, hopeful for sufficient financing to commission sewer treatment plants on every new facility we construct. We are also exploring adapting new technology that could add to our revenue model such as HydroThermal Carbonization (HTC) to produce hydrochar which has been largely coined the NEW charcoal.',
          ),
          SizedBox(height: 80.0),
          TextAndImage(
            hasbtn: false,
            isReversed: true,
            img: 'assets/images/tl.jpg',
            title: 'Waterless Toilets',
            des:
                'We have serviced over 1 million toilet uses from inception. We use toilets with cisterns that flush a minimum of 7 liters of water – do the math. That is over 7 million liters of water that have quite literally been flushed down the toilet. Part of our core work as we pursue expansion is to install waterless sanitation technology. Waterless toilets require little infrastructure (reduce capital demands on financing) and conserve a scarce resource, particularly in Zambia where safe water access is not a privilege for all.\n\nWe are currently engaged with change: WATER Labs (link) to pilot waterless toilets in Ndola under the ABInBev Challenges program. Watch this space!',
          ),
          SizedBox(height: 80.0),
          TextAndImage(
            hasbtn: false,
            img: 'assets/images/phd.jpg',
            title: 'Public Health Data',
            des:
                'Operating in peri-urban areas and servicing a multitude of people from all over the country, there is potential to install technology that can detect a range of disease markers in stool and urine, including those of some cancers, such as colorectal or urologic cancers. Our facilities could become a hub for continuous health monitoring, and the possibilities for improved data in our economy are untapped.',
          ),
        ],
      ),
    );
  }
}
