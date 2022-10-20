import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';

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
        left: widget.index == 0 ? 80.0 : 30.0,
        right: widget.index == projects.length - 1 ? 80.0 : 30.0,
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
              AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                height: widget.size.height * 0.3,
                width: widget.size.height * 0.3,
                padding: EdgeInsets.all(isHover ? 0.0 : 20.0),
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: primaryTextColor,
                    strokeAlign: StrokeAlign.inside,
                    width: 10.0,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(isHover ? 30.0 : 20.0),
                  child: Image.asset(widget.image),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                height: widget.size.height * 0.3,
                width: widget.size.height * 0.3,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: isHover ? Colors.black.withOpacity(0.8) : Colors.transparent,
                  border: Border.all(
                    color: primaryTextColor,
                    strokeAlign: StrokeAlign.inside,
                    width: 10.0,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: isHover ? Colors.white : Colors.transparent,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    Text(
                      widget.description ?? "",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: isHover ? Colors.white : Colors.transparent,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
