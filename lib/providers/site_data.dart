import 'package:flutter/foundation.dart';
import 'package:live_clean_zambia/models/service.dart';
import 'package:live_clean_zambia/models/toilet.dart';

class SiteData with ChangeNotifier {
  static String homeHeader =
      'Sustainable Sanitation Solutions for Africa\'s peri-urban Population';
  static String homeDes =
      'Closing the sanitation gap in Africa with simple, sustainable and innovative solutions';

  static const whatWeDo =
      'We construct and safely manage sustainable and market enabling water and sanitation facilities in peri-urban commercial hubs.';
  final List<double> pages = [
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
  ];

  void triggerSelection(int index) {
    pages[0] = 0.0;
    pages[1] = 0.0;
    pages[2] = 0.0;
    pages[3] = 0.0;
    pages[4] = 0.0;

    pages[index] = 45.0;
    notifyListeners();
  }

  static List<Service> services = [
    Service(
        des:
            'Facilities are professionally cleaned every 7 minutes with toilet paper supply and constant running water.',
        iconUrl: 'assets/svg/toilet.svg',
        title: 'Clean Toilets & Showers'),
    Service(
        des:
            'Access to potable water for various use in the markets such as, to clean fruits and vegetables.',
        iconUrl: 'assets/svg/bathe.svg',
        title: 'Potable Water'),
    Service(
        des:
            'Sanitation related hygiene products like toilet cleaner and sanitary pads are the main products.',
        iconUrl: 'assets/svg/shop.svg',
        title: 'Convenience Shop'),
    Service(
        des:
            'Reduces food waste in the markets by enlongating the life of perishable products.',
        iconUrl: 'assets/svg/phone.svg',
        title: 'Cold Storage'),
    Service(
        des:
            'Aside from the sinks in the toilets, we have designated stations where people who just need to clean their hands can as the move in the market.',
        iconUrl: 'assets/svg/basin.svg',
        title: 'Hand Washing and Sanitising Stations'),
    Service(
        des:
            'With the markets as a hub for transactions, providing mobile money services encourages the ease of transactions.',
        iconUrl: 'assets/svg/san.svg',
        title: 'Money Services'),
  ];

  static List<String> gallery = [
    'assets/images/gallery1.jpg',
    'assets/images/gallery2.jpg',
    'assets/images/gallery3.jpg',
    'assets/images/gallery4.jpg',
    'assets/images/gallery5.jpg',
    'assets/images/gallery6.jpg',
  ];

  static List<Toilet> toilets = [
    Toilet(name: 'Kanyama Market, Lusaka', img: 'assets/images/kanyama.jpg'),
    Toilet(name: 'Tokyo Way Market, Lusaka', img: 'assets/images/kamwala.jpg'),
    Toilet(name: 'Buseko Market, Lusaka', img: 'assets/images/buseko.jpg'),
  ];

  static getWidth(double width) {
    double wid = (width * 10) / 136.6;
    print('Width = ${wid}w');
  }

  static getHeight(double height) {
    double h = (height * 10) / 69.7;
    print('Height = ${h}h');
  }
}
