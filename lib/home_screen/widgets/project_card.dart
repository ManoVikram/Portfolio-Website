import 'package:flutter/material.dart';

import '../../constants.dart';

import '../models/project.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.size,
    required this.index,
    required this.title,
    required this.image,
    required this.url,
  }) : super(key: key);

  final Size size;
  final int index;
  final String title;
  final String image;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: index == 0 ? 80.0 : 30.0,
        right: index == projects.length - 1 ? 80.0 : 30.0,
      ),
      child: InkWell(
        onHover: (value) {},
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
      ),
    );
  }
}
