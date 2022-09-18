import 'package:flutter/foundation.dart';
import 'package:live_clean_zambia/models/service.dart';
import 'package:live_clean_zambia/models/toilet.dart';

class SiteData with ChangeNotifier {
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
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ',
        iconUrl: 'assets/svg/toilet.svg',
        title: 'Clean Toilets'),
    Service(
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ',
        iconUrl: 'assets/svg/bathe.svg',
        title: 'Shower Facilities'),
    Service(
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ',
        iconUrl: 'assets/svg/shop.svg',
        title: 'Convenience Shop'),
    Service(
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ',
        iconUrl: 'assets/svg/phone.svg',
        title: 'Phone Charging'),
    Service(
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ',
        iconUrl: 'assets/svg/basin.svg',
        title: 'HandWash Basin'),
    Service(
        des:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud ',
        iconUrl: 'assets/svg/san.svg',
        title: 'Soap & Sanitizers'),
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
