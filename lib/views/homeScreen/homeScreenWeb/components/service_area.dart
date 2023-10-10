import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:updateportfolio/components/constants/constants.dart';
import 'package:updateportfolio/views/homeScreen/provider/home_page_provider.dart';

Container servicesArea(BuildContext context, HomePageProvider homePageProvider) {
  return Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.symmetric(horizontal: 15),
    child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      physics: NeverScrollableScrollPhysics(),
      itemCount: serviceList.length,
      itemBuilder: (context, index) {
        return MouseRegion(
          onEnter: (_) {
            homePageProvider.setHovered(index);
          },
          onExit: (_) {
            homePageProvider.setHovered(-1);
          },
          child: ContainerArea(index: index, hoverd: index==homePageProvider.hovered),
        );
      },
    ),
  );
}

class ContainerArea extends StatelessWidget {
  final int index;
  final bool hoverd;

  const ContainerArea({super.key, required this.index, required this.hoverd});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.33,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: hoverd ? Colors.pink : Color(0xFF242430),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            serviceList[index]['title'],
            style: TextStyle(
              color: Colors.white,
              fontSize: hoverd? 20:15,
            ),
          ),
          Text(
            serviceList[index]['description'],
            style: TextStyle(
              color: hoverd? Colors.white:null,
            ),
          ),
          CupertinoButton(
            color: hoverd? Colors.blue:primaryColor,
            onPressed: () {},
            child: Text('Deal Now'),
          )
        ],
      ),
    );
  }
}
