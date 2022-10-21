import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';
import '../../responsive.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri)) {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          Text(
            "Let's connect",
            style: TextStyle(
              color: secondaryTextColor,
              fontSize: (Responsive.isDesktop(context) ||
                      Responsive.isMiniDesktop(context) ||
                      Responsive.isUltraTablet(context))
                  ? 20.0
                  : (Responsive.isTablet(context) ||
                          Responsive.isMiniTablet(context))
                      ? 18.0
                      : 16.0,
            ),
          ),
          const SizedBox(height: 10.0),
          Wrap(
            alignment: WrapAlignment.center,
            direction: Axis.horizontal,
            children: [
              IconButton(
                onPressed: () => _launchUrl("mailto:manovik18@gmail.com"),
                icon: const Icon(FontAwesomeIcons.envelope),
              ),
              IconButton(
                onPressed: () => _launchUrl("https://github.com/ManoVikram"),
                icon: const Icon(FontAwesomeIcons.github),
              ),
              IconButton(
                onPressed: () =>
                    _launchUrl("https://in.linkedin.com/in/manovik18"),
                icon: const Icon(FontAwesomeIcons.linkedin),
                color: Colors.indigo,
              ),
              IconButton(
                onPressed: () => _launchUrl("https://twitter.com/manovik18"),
                icon: const Icon(FontAwesomeIcons.twitter),
                color: Colors.blue,
              ),
              IconButton(
                onPressed: () =>
                    _launchUrl("https://www.youtube.com/ManoVikram"),
                icon: const Icon(FontAwesomeIcons.youtube),
                color: Colors.red,
              ),
              IconButton(
                onPressed: () =>
                    _launchUrl("https://www.instagram.com/themanovik18/"),
                icon: const Icon(FontAwesomeIcons.instagram),
                color: Colors.pink,
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Made with ",
                  style: TextStyle(
                    color: secondaryTextColor,
                    fontSize: (Responsive.isDesktop(context) ||
                            Responsive.isMiniDesktop(context) ||
                            Responsive.isUltraTablet(context))
                        ? 16.0
                        : (Responsive.isTablet(context) ||
                                Responsive.isMiniTablet(context))
                            ? 14.0
                            : 12.0,
                  ),
                ),
                TextSpan(
                  text: "❤️",
                  style: TextStyle(
                    fontFamily: "NotoColorEmoji",
                    fontSize: (Responsive.isDesktop(context) ||
                            Responsive.isMiniDesktop(context) ||
                            Responsive.isUltraTablet(context))
                        ? 16.0
                        : (Responsive.isTablet(context) ||
                                Responsive.isMiniTablet(context))
                            ? 14.0
                            : 12.0,
                  ),
                ),
                TextSpan(
                  text: " by Mano",
                  style: TextStyle(
                    color: secondaryTextColor,
                    fontSize: (Responsive.isDesktop(context) ||
                            Responsive.isMiniDesktop(context) ||
                            Responsive.isUltraTablet(context))
                        ? 16.0
                        : (Responsive.isTablet(context) ||
                                Responsive.isMiniTablet(context))
                            ? 14.0
                            : 12.0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
