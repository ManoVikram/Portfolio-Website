import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';

import '../widgets/about_section.dart';
import '../widgets/footer.dart';
import '../widgets/name_and_image_section_horizontal.dart';
import '../widgets/name_and_image_section_vertical.dart';
import '../widgets/projects_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    print(size.width);

    late double whiteCanvasOuterPadding;

    if (Responsive.isDesktop(context) || Responsive.isMiniDesktop(context)) {
      whiteCanvasOuterPadding = 80.0;
    } else if (Responsive.isUltraTablet(context) ||
        Responsive.isTablet(context)) {
      whiteCanvasOuterPadding = 60.0;
    } else if (Responsive.isMiniTablet(context)) {
      whiteCanvasOuterPadding = 40.0;
    } else {
      whiteCanvasOuterPadding = 10.0;
    }

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
            padding: EdgeInsets.all(whiteCanvasOuterPadding),
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                    (Responsive.isDesktop(context) ||
                            Responsive.isMiniDesktop(context) ||
                            Responsive.isUltraTablet(context))
                        ? 40.0
                        : (Responsive.isTablet(context) ||
                                Responsive.isMiniTablet(context))
                            ? 30.0
                            : 20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Responsive(
                  //   padding: whiteCanvasOuterPadding,
                  //   mobile: NameAndImageSectionVertical(size: size),
                  //   miniTablet: NameAndImageSectionVertical(size: size),
                  //   tablet: NameAndImageSectionVertical(size: size),
                  //   ultraTablet: NameAndImageSectionHorizontal(size: size),
                  //   miniDesktop: NameAndImageSectionHorizontal(size: size),
                  //   desktop: NameAndImageSectionHorizontal(size: size),
                  // ),
                  // AboutSection(size: size),
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
