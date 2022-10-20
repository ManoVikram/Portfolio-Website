import 'package:flutter/material.dart';

import '../../constants.dart';

import '../widgets/about_section.dart';
import '../widgets/footer.dart';
import '../widgets/name_and_image_section.dart';
import '../widgets/projects_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
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
                  AboutSection(size: size),
                  ProjectsSection(size: size),
                  const SizedBox(height: 160.0),
                  const Footer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
