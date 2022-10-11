// ignore_for_file: avoid_print

import 'package:flutter/foundation.dart';
import 'package:live_clean_zambia/models/partner.dart';
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
    0.0,
  ];

  void triggerSelection(int index) {
    pages[0] = 0.0;
    pages[1] = 0.0;
    pages[2] = 0.0;
    pages[3] = 0.0;
    pages[4] = 0.0;
    pages[5] = 0.0;

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
        iconUrl: 'assets/svg/tap.svg',
        title: 'Potable Water'),
    Service(
        des:
            'Sanitation related hygiene products like toilet cleaner and sanitary pads are the main products.',
        iconUrl: 'assets/svg/shop.svg',
        title: 'Convenience Shop'),
    Service(
        des:
            'Reduces food waste in the markets by enlongating the life of perishable products.',
        iconUrl: 'assets/svg/fridge.svg',
        title: 'Cold Storage'),
    Service(
        des:
            'Aside from the sinks in the toilets, we have designated stations where people who just need to clean their hands can as the move in the market.',
        iconUrl: 'assets/svg/basin.svg',
        title: 'Hand Washing and Sanitising Stations'),
    Service(
        des:
            'With the markets as a hub for transactions, providing mobile money services encourages the ease of transactions.',
        iconUrl: 'assets/svg/money.svg',
        title: 'Money Services'),
  ];

  static List<Partner> team = [
    Partner(
      name: 'Abigail Chishala',
      link: 'https://www.linkedin.com/in/abigail-chishala-2429ba83/',
      pos: 'Chief Executive Officer',
      img: 'assets/images/abi.jpg',
    ),
    Partner(
      name: 'Nazir Pandor',
      link: 'https://www.linkedin.com/in/nazir-pandor-12375890/',
      pos: 'Strategy Management Consultant',
      img: 'assets/images/nazi.jpg',
    ),
    Partner(
      name: 'Cuthbert Moyo',
      link: 'https://www.linkedin.com/in/cuthbert-moyo-87bb90247/',
      pos: 'Financial Management Consultant',
      img: 'assets/images/moyo.jpg',
    ),
  ];

  static List<String> gallery = [
    'assets/images/gallery1.jpg',
    'assets/images/gallery2.jpg',
    'assets/images/gallery3.jpg',
    'assets/images/gallery4.jpg',
    'assets/images/gallery5.jpg',
    'assets/images/gallery6.jpg',
  ];

  static List<String> home = [
    'assets/images/home1.PNG',
    'assets/images/home2.jpg',
    'assets/images/home3.jpg',
    'assets/images/home4.jpg',
    'assets/images/home5.jpg',
    'assets/images/home6.jpg',
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

  static List<Partner> partners = [
    Partner(
        name: 'Kukula Seed',
        img: 'assets/images/ks.png',
        link: 'https://kukulacapital.com/category/live-clean/'),
    Partner(
        name: 'Innovations Against Poverty',
        img: 'assets/images/iap.png',
        link:
            'https://m.facebook.com/watch/?v=639933253085590&paipv=0&eav=AfYnOm_D2pkGdJkDcAIwCsqluwe2FkH9eBG4_MahS83ERX42X4lagV-Tf1nQmPNba18&_rdr'),
    Partner(
        name: 'SNV (Netherlands Development Organisation)',
        img: 'assets/images/snv.png',
        link: 'https://snv.org/country/zambia'),
    Partner(
        name: 'Menstrual Health Day',
        img: 'assets/images/mhd.png',
        link: 'https://menstrualhygieneday.org/get-involved/partnership/'),
    Partner(
        name: 'Toilet Board Coalition',
        img: 'assets/images/tbc.jpg',
        link: 'https://www.toiletboard.org/'),
    Partner(
        name: 'AGS (Accelerated Growth for SME\'s)',
        img: 'assets/images/ags.png',
        link: 'https://agsprogramme.org/'),
    Partner(
        name: 'Sustainable Sanitation Alliance',
        img: 'assets/images/ssa.png',
        link: 'https://www.susana.org/en/'),
    Partner(
        name: 'Aqua for All',
        img: 'assets/images/afa.png',
        link: 'https://aquaforall.org/project/live-clean-initiative-zambia/'),
    Partner(
        name: 'Change: Water Labs',
        img: 'assets/images/cwl.png',
        link: 'https://www.change-water.com/'),
    Partner(
        name: 'Unilever Zambia',
        img: 'assets/images/uz.png',
        link: 'https://www.facebook.com/UnileverZambia/'),
  ];
}
