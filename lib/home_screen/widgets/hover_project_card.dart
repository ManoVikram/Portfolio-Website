import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';

import './project_card.dart';

class HoverProjectCard extends StatelessWidget {
  const HoverProjectCard({
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
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: isHover ? Colors.black.withOpacity(0.8) : Colors.transparent,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                widget.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: isHover ? Colors.white : Colors.transparent,
                  fontSize: (Responsive.isDesktop(context) ||
                          Responsive.isMiniDesktop(context) ||
                          Responsive.isUltraTablet(context))
                      ? 18.0
                      : 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Expanded(
            child: Text(
              widget.description ?? "",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isHover ? Colors.white : Colors.transparent,
                fontSize: (Responsive.isDesktop(context) ||
                        Responsive.isMiniDesktop(context) ||
                        Responsive.isUltraTablet(context))
                    ? 14.0
                    : 12.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
