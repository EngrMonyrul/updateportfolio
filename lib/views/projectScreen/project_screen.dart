import 'package:flutter/material.dart';
import 'package:updateportfolio/components/responsiveFunction/responsive_builder.dart';
import 'package:updateportfolio/views/projectScreen/projectScreenWeb/project_screen_view.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobileView: Text('Mobile View'),
      largeMobileView: Text('Large Mobile View'),
      tabView: Text('Tab Mobile View'),
      webView: ProjectScreenViewWeb(),
    );
  }
}
