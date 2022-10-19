import 'package:flutter/material.dart';

import '../../constants.dart';

import './project_card.dart';
import '../models/project.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 80.0, top: 120.0),
          child: Text(
            "Projects",
            style: TextStyle(
              color: primaryTextColor,
              fontSize: 48.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 40.0),
        SizedBox(
          height: size.height * 0.3,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: projects.length,
            itemBuilder: (context, index) => ProjectCard(
              size: size,
              index: index,
              title: projects[index].title,
              image: projects[index].image,
              url: projects[index].url,
            ),
          ),
        ),
      ],
    );
  }
}
