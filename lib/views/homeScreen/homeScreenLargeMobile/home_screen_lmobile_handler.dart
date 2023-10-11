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
import 'package:updateportfolio/views/homeScreen/homeScreenMobile/components/expert_tag_mobile.dart';
import 'package:updateportfolio/views/homeScreen/homeScreenMobile/components/hero_section_mobile.dart';
import 'package:updateportfolio/views/homeScreen/provider/home_page_provider.dart';

import '../homeScreenMobile/components/remote_section_mobile.dart';
import '../homeScreenMobile/components/salary_price_section.dart';
import '../homeScreenMobile/components/service_section_mobile.dart';
import '../homeScreenWeb/components/expert_tag.dart';
import '../homeScreenWeb/components/hero_section.dart';
import '../homeScreenWeb/components/remote_price_plan.dart';
import '../homeScreenWeb/components/review_section.dart';
import '../homeScreenWeb/components/salary_price_section.dart';
import '../homeScreenWeb/components/service_area.dart';
import '../homeScreenWeb/components/worked_companies.dart';
import 'components/services_area_lmobile.dart';

class HomePageViewAreaLMobile extends StatefulWidget {
  const HomePageViewAreaLMobile({super.key});

  @override
  State<HomePageViewAreaLMobile> createState() => _HomePageViewAreaLMobileState();
}

class _HomePageViewAreaLMobileState extends State<HomePageViewAreaLMobile> {
  @override
  Widget build(BuildContext context) {
    final homePageProvider = Provider.of<HomePageProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heroSectionMobile(context),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  expertTagMobile(experienceYear, '  Year Experience'),
                  expertTagMobile(projects, '  Projects'),
                  expertTagMobile(company, '  Companies'),
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
            servicesAreaMobile(context, homePageProvider),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text(
                'Remote Price Plans',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            RemotePricePlansMobile(homePageProvider: homePageProvider),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Text(
                'Job Salary Plans',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            salaryPricePlansMobile(context, homePageProvider),
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
