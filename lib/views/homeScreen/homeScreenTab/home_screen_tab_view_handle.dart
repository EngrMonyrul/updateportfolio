import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:updateportfolio/components/constants/constants.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:updateportfolio/views/homeScreen/homeScreenTab/components/drawer_section_tab.dart';
import 'package:updateportfolio/views/homeScreen/homeScreenTab/components/hero_section_view.dart';
import 'package:updateportfolio/views/homeScreen/homeScreenTab/components/remote_price_plan_tab.dart';
import 'package:updateportfolio/views/homeScreen/homeScreenTab/components/review_section_tab.dart';
import 'package:updateportfolio/views/homeScreen/provider/home_page_provider.dart';

import '../homeScreenWeb/components/expert_tag.dart';
import '../homeScreenWeb/components/hero_section.dart';
import '../homeScreenWeb/components/remote_price_plan.dart';
import '../homeScreenWeb/components/review_section.dart';
import '../homeScreenWeb/components/salary_price_section.dart';
import '../homeScreenWeb/components/service_area.dart';
import '../homeScreenWeb/components/worked_companies.dart';

class HomePageViewTabHandle extends StatefulWidget {
  const HomePageViewTabHandle({super.key});

  @override
  State<HomePageViewTabHandle> createState() => _HomePageViewTabHandleState();
}

class _HomePageViewTabHandleState extends State<HomePageViewTabHandle> {
  @override
  Widget build(BuildContext context) {
    final homePageProvider = Provider.of<HomePageProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heroSectionTab(context),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  expertTag(experienceYear, '  Year Experience'),
                  expertTag(projects, '  Projects'),
                  expertTag(company, '  Companies'),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text(
                'My Services',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            servicesArea(context, homePageProvider),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text(
                'Remote Price Plans',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            RemotePricePlansTab(homePageProvider: homePageProvider),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text(
                'Job Salary Plans',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            salaryPricePlans(context, homePageProvider),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text(
                'Reviews',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            reviewSectionTab(context, homePageProvider),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text(
                'Worked With',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            workedCompaniesSection(homePageProvider: homePageProvider),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFF242430),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(child: Text('©All Copyright Reserved')),
            ),
          ],
        ),
      ),
    );
  }
}
