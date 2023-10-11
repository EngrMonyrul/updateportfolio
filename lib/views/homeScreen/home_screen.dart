import 'package:flutter/material.dart';
import 'package:updateportfolio/components/responsiveFunction/responsive_builder.dart';
import 'package:updateportfolio/views/homeScreen/homeScreenLargeMobile/home_screen_large_mobile.dart';
import 'package:updateportfolio/views/homeScreen/homeScreenMobile/home_screen_mobile.dart';
import 'package:updateportfolio/views/homeScreen/homeScreenTab/components/drawer_section_tab.dart';
import 'package:updateportfolio/views/homeScreen/homeScreenTab/home_screen_tab_view.dart';

import 'homeScreenWeb/home_screen_view_web.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        mobileView: HomeScreenMobileView(),
        largeMobileView: HomeScreenLargeMobileView(),
        tabView: HomeScreenTabView(),
        webView: HomeScreenViewWeb(),
      ),
    );
  }
}
