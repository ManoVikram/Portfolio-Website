import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';

class NameAndImageSectionHorizontal extends StatelessWidget {
  const NameAndImageSectionHorizontal({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.9,
      padding: EdgeInsets.all(Responsive.isDesktop(context)
          ? 80.0
          : (Responsive.isMiniDesktop(context) ? 50.0 : 40.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Hello",
                          style: TextStyle(
                            fontSize: Responsive.isDesktop(context)
                                ? 30.0
                                : ((Responsive.isMiniDesktop(context) ||
                                        Responsive.isUltraTablet(context))
                                    ? 24.0
                                    : 20.0),
                            color: secondaryTextColor,
                          ),
                        ),
                        TextSpan(
                          text: "👋",
                          style: TextStyle(
                            fontFamily: "NotoColorEmoji",
                            fontSize: Responsive.isDesktop(context)
                                ? 30.0
                                : ((Responsive.isMiniDesktop(context) ||
                                        Responsive.isUltraTablet(context))
                                    ? 24.0
                                    : 20.0),
                          ),
                        ),
                        TextSpan(
                          text: ", I'm",
                          style: TextStyle(
                            fontSize: Responsive.isDesktop(context)
                                ? 30.0
                                : ((Responsive.isMiniDesktop(context) ||
                                        Responsive.isUltraTablet(context))
                                    ? 24.0
                                    : 20.0),
                            color: secondaryTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  "Mano\nVikram",
                  style: TextStyle(
                    height: 1.2,
                    fontSize: Responsive.isDesktop(context)
                        ? 108.0
                        : (Responsive.isMiniDesktop(context) ? 96.0 : 84.0),
                    fontWeight: FontWeight.w600,
                    color: primaryTextColor,
                  ),
                ),
                const SizedBox(height: 20.0),
                Text(
                  "Developer | Tinkerer | Hobbyist",
                  style: TextStyle(
                    fontSize: Responsive.isDesktop(context)
                        ? 36.0
                        : (Responsive.isMiniDesktop(context) ? 30.0 : 24.0),
                    color: secondaryTextColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              "assets/images/DP_WithCircleBackground.png",
              height: size.width * 0.4,
            ),
          ),
        ],
      ),
    );
  }
}
