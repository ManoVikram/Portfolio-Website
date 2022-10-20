import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final double padding;
  final Widget mobile;
  final Widget miniTablet;
  final Widget tablet;
  final Widget ultraTablet;
  final Widget miniDesktop;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.padding,
    required this.mobile,
    required this.miniTablet,
    required this.tablet,
    required this.ultraTablet,
    required this.miniDesktop,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 540;

  static bool isMiniTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 720 &&
      MediaQuery.of(context).size.width >= 540;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 940 &&
      MediaQuery.of(context).size.width >= 720;

  static bool isUltraTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1200 &&
      MediaQuery.of(context).size.width >= 940;

  static bool isMiniDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width < 1500 &&
      MediaQuery.of(context).size.width >= 1200;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1500;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth + (2 * padding) >= 1500) {
          return desktop;
        } else if (constraints.maxWidth + (2 * padding) >= 1200) {
          return miniDesktop;
        } else if (constraints.maxWidth + (2 * padding) >= 940) {
          return ultraTablet;
        } else if (constraints.maxWidth + (2 * padding) >= 720) {
          return tablet;
        } else if (constraints.maxWidth + (2 * padding) >= 540) {
          return miniTablet;
        } else {
          return mobile;
        }
      },
    );
  }
}
