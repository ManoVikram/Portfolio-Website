import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';

class AboutSection extends StatelessWidget {
  AboutSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  late double aboutTitleSize = 48.0;
  late double aboutTextSize = 30.0;

  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      aboutTitleSize = 48.0;
      aboutTextSize = 30.0;
    } else if (Responsive.isMiniDesktop(context)) {
      aboutTitleSize = 36.0;
      aboutTextSize = 24.0;
    } else if (Responsive.isUltraTablet(context)) {
      aboutTitleSize = 30.0;
      aboutTextSize = 20.0;
    } else if (Responsive.isTablet(context)) {
      aboutTitleSize = 28.0;
      aboutTextSize = 18.0;
    } else if (Responsive.isMiniTablet(context)) {
      aboutTitleSize = 26.0;
      aboutTextSize = 15.0;
    } else {
      aboutTitleSize = 24.0;
      aboutTextSize = 14.0;
    }

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: (Responsive.isDesktop(context) ||
                  Responsive.isMiniDesktop(context) ||
                  Responsive.isUltraTablet(context))
              ? 80.0
              : (Responsive.isTablet(context) ||
                      Responsive.isMiniTablet(context))
                  ? 40.0
                  : 20.0,
          vertical: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About",
            style: TextStyle(
              color: primaryTextColor,
              fontSize: aboutTitleSize,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
              height: (Responsive.isDesktop(context) ||
                      Responsive.isMiniDesktop(context) ||
                      Responsive.isUltraTablet(context))
                  ? 40.0
                  : 10.0),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: (Responsive.isDesktop(context) ||
                        Responsive.isMiniDesktop(context) ||
                        Responsive.isUltraTablet(context))
                    ? size.width * 0.1
                    : 0.0),
            child: Text(
              "I’m a developer who loves writing software and tinkering around with  technology. Curiosity drives me into the rabit hole to learn and try out new stuff. Experimenting with what you have learnt is more fun and powerful than just learning. I find it fun to try out new technologies and get a taste of it. I primarily work with Flutter to build awesome UI, PostgreSQL for backend database and GoLang for building RESTful APIs. Creating content on YouTube is something I do as a hobby.",
              style: TextStyle(
                color: secondaryTextColor,
                fontSize: aboutTextSize,
                height: 1.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
