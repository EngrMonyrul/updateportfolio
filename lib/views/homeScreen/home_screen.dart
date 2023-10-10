import 'package:flutter/material.dart';
import 'package:updateportfolio/components/responsiveFunction/responsive_builder.dart';

import 'homeScreenWeb/home_screen_view_web.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        mobileView: Text('Mobile'),
        largeMobileView: Text('Large Mobile'),
        tabView: Text('Tab'),
        webView: HomeScreenViewWeb(),
      ),
    );
  }
}
