import 'package:flutter/material.dart';
import 'package:updateportfolio/components/responsiveFunction/responsive_builder.dart';
import 'package:updateportfolio/views/projectScreen/projectScreenLMobile/project_screen_view_lmobile.dart';
import 'package:updateportfolio/views/projectScreen/projectScreenTab/project_screen_view_tab.dart';
import 'package:updateportfolio/views/projectScreen/projectScreenWeb/project_screen_view.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobileView: ProjectScreenViewLMobile(),
      largeMobileView: ProjectScreenViewLMobile(),
      tabView: ProjectScreenViewTab(),
      webView: ProjectScreenViewWeb(),
    );
  }
}
