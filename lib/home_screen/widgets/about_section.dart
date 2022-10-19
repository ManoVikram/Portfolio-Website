import 'package:flutter/material.dart';

import '../../constants.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "About",
            style: TextStyle(
              color: primaryTextColor,
              fontSize: 48.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 40.0),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            child: const Text(
              "I’m a developer who loves writing software and tinkering around with  technology. Curiosity drives me into the rabit hole to learn and try out new stuff. Experimenting with what you have learnt is more fun and powerful than just learning. I find it fun to try out new technologies and get a taste of it. I primarily work with Flutter to build awesome UI, PostgreSQL for backend database and GoLang for building RESTful APIs. Creating content on YouTube is something I do as a hobby.",
              style: TextStyle(
                color: secondaryTextColor,
                fontSize: 30.0,
                height: 1.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
