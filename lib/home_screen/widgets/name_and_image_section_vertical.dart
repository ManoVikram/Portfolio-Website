import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';

class NameAndImageSectionVertical extends StatelessWidget {
  const NameAndImageSectionVertical({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Responsive.isMobile(context) ? size.height : size.height * 0.9,
      alignment: Alignment.topCenter,
      padding: EdgeInsets.all(Responsive.isMobile(context) ? 20.0 : 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(
              "assets/images/DP_WithCircleBackground.png",
              height: size.width * 0.3,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Hello",
                        style: TextStyle(
                          fontSize: Responsive.isTablet(context)
                              ? 30.0
                              : (Responsive.isMiniTablet(context)
                                  ? 24.0
                                  : 18.0),
                          color: secondaryTextColor,
                        ),
                      ),
                      TextSpan(
                        text: "👋",
                        style: TextStyle(
                          fontFamily: "NotoColorEmoji",
                          fontSize: Responsive.isTablet(context)
                              ? 30.0
                              : (Responsive.isMiniTablet(context)
                                  ? 24.0
                                  : 18.0),
                        ),
                      ),
                      TextSpan(
                        text: ", I'm",
                        style: TextStyle(
                          fontSize: Responsive.isTablet(context)
                              ? 30.0
                              : (Responsive.isMiniTablet(context)
                                  ? 24.0
                                  : 18.0),
                          color: secondaryTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Responsive.isMobile(context) ? 10.0 : 20.0),
                Text(
                  "Mano Vikram",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.2,
                    fontSize: Responsive.isTablet(context)
                        ? 66.0
                        : (Responsive.isMiniTablet(context) ? 54.0 : 42.0),
                    fontWeight: FontWeight.w600,
                    color: primaryTextColor,
                  ),
                ),
                SizedBox(height: Responsive.isMobile(context) ? 10.0 : 20.0),
                Text(
                  "Developer | Tinkerer | Hobbyist",
                  style: TextStyle(
                    fontSize: Responsive.isTablet(context)
                        ? 30.0
                        : (Responsive.isMiniTablet(context) ? 24.0 : 18.0),
                    color: secondaryTextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
