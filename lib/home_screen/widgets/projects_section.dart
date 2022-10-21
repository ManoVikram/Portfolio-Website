import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';

import 'project_card.dart';
import '../models/project.dart';

class ProjectsSection extends StatelessWidget {
  ProjectsSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  late double projectTitleSize = 48.0;

  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      projectTitleSize = 48.0;
    } else if (Responsive.isMiniDesktop(context)) {
      projectTitleSize = 36.0;
    } else if (Responsive.isUltraTablet(context)) {
      projectTitleSize = 30.0;
    } else if (Responsive.isTablet(context)) {
      projectTitleSize = 28.0;
    } else if (Responsive.isMiniTablet(context)) {
      projectTitleSize = 26.0;
    } else {
      projectTitleSize = 24.0;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: (Responsive.isDesktop(context) ||
                      Responsive.isMiniDesktop(context) ||
                      Responsive.isUltraTablet(context))
                  ? 80.0
                  : (Responsive.isTablet(context) ||
                          Responsive.isMiniTablet(context))
                      ? 40.0
                      : 20.0,
              top: (Responsive.isDesktop(context) ||
                      Responsive.isMiniDesktop(context) ||
                      Responsive.isUltraTablet(context))
                  ? 120.0
                  : (Responsive.isTablet(context) ||
                          Responsive.isMiniTablet(context))
                      ? 80.0
                      : 40.0),
          child: Text(
            "Projects",
            style: TextStyle(
              color: primaryTextColor,
              fontSize: projectTitleSize,
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
              description: projects[index].description,
              image: projects[index].image,
              url: projects[index].url,
            ),
          ),
        ),
      ],
    );
  }
}
