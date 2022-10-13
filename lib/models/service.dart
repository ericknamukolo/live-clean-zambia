import 'package:flutter/material.dart';

class Service {
  String title;
  String iconUrl;
  String des;
  IconData? icon;

  Service({
    required this.des,
    required this.iconUrl,
    required this.title,
    this.icon,
  });
}
