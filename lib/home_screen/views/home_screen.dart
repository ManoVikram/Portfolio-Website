import 'package:flutter/material.dart';

import '../../constants.dart';

import '../widgets/about_section.dart';
import '../widgets/name_and_image_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Scrollbar(
          thumbVisibility: true,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  primaryBgColor,
                  secondaryBgColor,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(80.0),
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NameAndImageSection(size: size),
                    const Divider(color: secondaryTextColor),
                    AboutSection(size: size),
                    const Divider(color: secondaryTextColor),
                    ProjectsSection(size: size),
                    // Align(
                    //     alignment: Alignment.bottomCenter,
                    //     child: const Text("Hello"))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height - 80.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 80.0, top: 80.0),
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
              itemCount: 7,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: (index == 0 || index == 6) ? 80.0 : 30.0),
                child: Container(
                  height: size.height * 0.3,
                  width: size.height * 0.3,
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
            ),
          ),
        ],
      ),
    );
  }
}
