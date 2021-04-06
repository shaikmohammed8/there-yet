import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final mobile, web;

  Responsive({this.mobile, this.web});

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 800;

  static bool isWeb(BuildContext context) =>
      MediaQuery.of(context).size.width > 800;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 700) {
          return web;
        } else
          return mobile;
      },
    );
  }
}
