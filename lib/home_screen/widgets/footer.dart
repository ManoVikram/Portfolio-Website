import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';

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
          const Text(
            "Let's connect",
            style: TextStyle(
              color: secondaryTextColor,
              fontSize: 20.0,
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
                onPressed: () => _launchUrl("https://in.linkedin.com/in/manovik18"),
                icon: const Icon(FontAwesomeIcons.linkedin),
                color: Colors.indigo,
              ),
              IconButton(
                onPressed: () => _launchUrl("https://twitter.com/manovik18"),
                icon: const Icon(FontAwesomeIcons.twitter),
                color: Colors.blue,
              ),
              IconButton(
                onPressed: () => _launchUrl("https://www.youtube.com/ManoVikram"),
                icon: const Icon(FontAwesomeIcons.youtube),
                color: Colors.red,
              ),
              IconButton(
                onPressed: () => _launchUrl("https://www.instagram.com/themanovik18/"),
                icon: const Icon(FontAwesomeIcons.instagram),
                color: Colors.pink,
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          const Text(
            "Made with ❤️ by Mano",
            style: TextStyle(
              color: secondaryTextColor,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
