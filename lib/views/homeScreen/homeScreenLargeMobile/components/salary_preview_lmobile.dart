import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:updateportfolio/views/homeScreen/provider/home_page_provider.dart';

import '../../../../components/constants/constants.dart';

Container salaryPricePlansLMobile(BuildContext context, HomePageProvider homePageProvider) {
  return Container(
    height: MediaQuery.of(context).size.height / 2,
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.symmetric(horizontal: 15),
    child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: jobSalaryPlans.length,
      itemBuilder: (context, index) {
        return MouseRegion(
          onEnter: (_) {
            homePageProvider.setSalaryHovered(index);
          },
          onExit: (_) {
            homePageProvider.setSalaryHovered(-1);
          },
          child: ContainerArea(index: index, hovered: index == homePageProvider.salaryHovered),
        );
      },
    ),
  );
}

class ContainerArea extends StatelessWidget {
  final int index;
  final bool hovered;

  const ContainerArea({super.key, required this.index, required this.hovered});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.33,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: hovered? Colors.pink: Color(0xFF242430),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            jobSalaryPlans.entries.elementAt(index).key.toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: hovered ? 20 : 15,
            ),
          ),
          Text.rich(TextSpan(text: '\$ ',
              style: TextStyle(
                color: hovered? Colors.white:null,
              ),
              children: [
                TextSpan(
                    text: jobSalaryPlans.entries.elementAt(index).value.toString(),
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 20,
                    )),
                TextSpan(
                  text: ' Per Month',
                  style: TextStyle(
                    color: hovered ? Colors.white : null,
                  ),
                ),
              ])),
          CupertinoButton(
            color: hovered ? Colors.blue : primaryColor,
            onPressed: () {},
            child: Text('Deal Now'),
          ),
        ],
      ),
    );
  }
}
