import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:updateportfolio/components/constants/constants.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:updateportfolio/views/homeScreen/homeScreenLargeMobile/components/hero_section_lmobile.dart';
import 'package:updateportfolio/views/homeScreen/homeScreenLargeMobile/components/remoteSectionLMobile.dart';
import 'package:updateportfolio/views/homeScreen/homeScreenLargeMobile/components/review_sction_lmobile.dart';
import 'package:updateportfolio/views/homeScreen/homeScreenLargeMobile/components/salary_preview_lmobile.dart';
import 'package:updateportfolio/views/homeScreen/provider/home_page_provider.dart';

import '../homeScreenLargeMobile/components/services_area_lmobile.dart';
import '../homeScreenWeb/components/expert_tag.dart';
import '../homeScreenWeb/components/hero_section.dart';
import '../homeScreenWeb/components/remote_price_plan.dart';
import '../homeScreenWeb/components/review_section.dart';
import '../homeScreenWeb/components/salary_price_section.dart';
import '../homeScreenWeb/components/service_area.dart';
import '../homeScreenWeb/components/worked_companies.dart';

class HomePageViewMobileHandler extends StatefulWidget {
  const HomePageViewMobileHandler({super.key});

  @override
  State<HomePageViewMobileHandler> createState() => _HomePageViewMobileHandlerState();
}

class _HomePageViewMobileHandlerState extends State<HomePageViewMobileHandler> {
  @override
  Widget build(BuildContext context) {
    final homePageProvider = Provider.of<HomePageProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heroSectionLMobile(context),
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
            servicesAreaLMobile(context, homePageProvider),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text(
                'Remote Price Plans',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            RemotePricePlansLMobile(homePageProvider: homePageProvider),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text(
                'Job Salary Plans',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            salaryPricePlansLMobile(context, homePageProvider),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text(
                'Reviews',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            reviewSectionLMobile(context, homePageProvider),
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
