import 'package:flutter/material.dart';
import 'package:updateportfolio/components/constants/constants.dart';
import 'package:updateportfolio/views/homeScreen/provider/home_page_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class workedCompaniesSection extends StatelessWidget {
  final HomePageProvider homePageProvider;

  const workedCompaniesSection({super.key, required this.homePageProvider});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: ListView.builder(
        itemCount: workedCompanies.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return MouseRegion(
            onEnter: (_) {
              homePageProvider.setWorkedHover(index);
            },
            onExit: (_) {
              homePageProvider.setWorkedHover(-1);
            },
            child: ContainerArea(index: index, hovered: index == homePageProvider.workedHovered),
          );
        },
      ),
    );
  }
}

class ContainerArea extends StatelessWidget {
  final int index;
  final bool hovered;

  const ContainerArea({super.key, required this.index, required this.hovered});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await launchUrl(Uri.parse(workedCompanies[index]['link']));
      },
      child: Column(
        children: [
          Image.asset(workedCompanies[index]['image'], height: MediaQuery.of(context).size.height * 0.17),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              workedCompanies[index]['name'],
              style: TextStyle(color: hovered ? Colors.pink : null, fontSize: hovered ? 20 : 15),
            ),
          ),
        ],
      ),
    );
  }
}
