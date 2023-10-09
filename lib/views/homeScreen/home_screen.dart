import 'package:flutter/material.dart';
import 'package:updateportfolio/components/responsiveFunction/responsive_builder.dart';
import 'package:updateportfolio/views/homeScreen/components/home_screen_view_web.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        mobileView: Text('Mobile'),
        tabView: Text('Tab'),
        webView: HomeScreenViewWeb(),
      ),
    );
  }
}
