import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../responsive.dart';

import './base_projec_card.dart';
import './hover_project_card.dart';
import '../models/project.dart';

class ProjectCard extends StatefulWidget {
  const ProjectCard({
    Key? key,
    required this.size,
    required this.index,
    required this.title,
    this.description,
    required this.image,
    required this.url,
  }) : super(key: key);

  final Size size;
  final int index;
  final String title;
  final String? description;
  final String image;
  final String url;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri)) {
      throw 'Could not launch $uri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: widget.index == 0
            ? (Responsive.isDesktop(context) ||
                    Responsive.isMiniDesktop(context) ||
                    Responsive.isUltraTablet(context))
                ? 80.0
                : (Responsive.isTablet(context) ||
                        Responsive.isMiniTablet(context))
                    ? 40.0
                    : 20.0
            : 10.0,
        right: widget.index == projects.length - 1
            ? (Responsive.isDesktop(context) ||
                    Responsive.isMiniDesktop(context) ||
                    Responsive.isUltraTablet(context))
                ? 80.0
                : (Responsive.isTablet(context) ||
                        Responsive.isMiniTablet(context))
                    ? 40.0
                    : 20.0
            : 10.0,
      ),
      child: InkWell(
        onTap: () => _launchUrl(widget.url),
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Stack(
            children: [
              BaseProjectCard(isHover: isHover, widget: widget),
              HoverProjectCard(isHover: isHover, widget: widget),
            ],
          ),
        ),
      ),
    );
  }
}
