import 'package:flutter/material.dart';

import '../../constants.dart';

class NameAndImageSection extends StatelessWidget {
  const NameAndImageSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.9,
      padding: const EdgeInsets.all(80.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Hello👋, I'm",
                    style: TextStyle(
                      fontSize: 30.0,
                      color: secondaryTextColor,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  "Mano\nVikram",
                  style: TextStyle(
                    height: 1.2,
                    fontSize: 108.0,
                    fontWeight: FontWeight.w600,
                    color: primaryTextColor,
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  "Developer | Tinkerer | Hobbyist",
                  style: TextStyle(
                    fontSize: 36.0,
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
