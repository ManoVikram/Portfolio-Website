import 'package:flutter/material.dart';

import '../../constants.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.size,
    required this.index,
  }) : super(key: key);

  final Size size;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: (index == 0 || index == 6) ? 80.0 : 30.0),
      child: Container(
        height: size.height * 0.3,
        width: size.height * 0.3,
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: primaryTextColor,
            strokeAlign: StrokeAlign.inside,
            width: 10.0,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
