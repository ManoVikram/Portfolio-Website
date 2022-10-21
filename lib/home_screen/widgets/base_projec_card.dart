import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';

import './project_card.dart';

class BaseProjectCard extends StatelessWidget {
  const BaseProjectCard({
    Key? key,
    required this.isHover,
    required this.widget,
  }) : super(key: key);

  final bool isHover;
  final ProjectCard widget;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      height: Responsive.isMobile(context)
          ? widget.size.height * 0.25
          : widget.size.height * 0.3,
      width: Responsive.isMobile(context)
          ? widget.size.height * 0.25
          : widget.size.height * 0.3,
      padding: EdgeInsets.all(isHover
          ? 0.0
          : (Responsive.isDesktop(context) || Responsive.isMiniDesktop(context))
              ? 20.0
              : (Responsive.isUltraTablet(context) ||
                      Responsive.isTablet(context))
                  ? 16.0
                  : 12.0),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        border: Border.all(
          color: primaryTextColor,
          strokeAlign: StrokeAlign.inside,
          width: (Responsive.isDesktop(context) ||
                  Responsive.isMiniDesktop(context))
              ? 10.0
              : (Responsive.isUltraTablet(context) ||
                      Responsive.isTablet(context))
                  ? 8.0
                  : 6.0,
        ),
        borderRadius: BorderRadius.circular((Responsive.isDesktop(context) ||
                Responsive.isMiniDesktop(context) ||
                Responsive.isUltraTablet(context))
            ? 40.0
            : 30.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(isHover ? 30.0 : 20.0),
        child: Image.asset(widget.image),
      ),
    );
  }
}