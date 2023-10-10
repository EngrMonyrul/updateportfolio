import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:updateportfolio/views/homeScreen/provider/home_page_provider.dart';

import '../../../../components/constants/constants.dart';

class RemotePricePlans extends StatelessWidget {
  final HomePageProvider homePageProvider;

  const RemotePricePlans({super.key, required this.homePageProvider});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: remotePricePlans.length,
        itemBuilder: (context, index) {
          return MouseRegion(
            onEnter: (_) {
              homePageProvider.setPriceHovered(index);
            },
            onExit: (_) {
              homePageProvider.setPriceHovered(-1);
            },
            child: ContainerArea(index: index, hoverd: index == homePageProvider.priceHoverd),
          );
        },
      ),
    );
  }
}

class ContainerArea extends StatelessWidget {
  final int index;
  final bool hoverd;

  const ContainerArea({super.key, required this.index, required this.hoverd});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.32,
      width: MediaQuery.of(context).size.width * 0.33,
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: hoverd ? Colors.pink : Color(0xFF242430),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            remotePricePlans[index]['basic']![0],
            style: TextStyle(
              color: Colors.white,
              fontSize: hoverd ? 20 : 15,
            ),
          ),
          Text.rich(TextSpan(
              text: '\$ ',
              style: TextStyle(
                color: hoverd ? Colors.white : null,
              ),
              children: [
                TextSpan(
                    text: remotePricePlans[index]['basic']![1],
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 20,
                      color: primaryColor,
                    )),
                TextSpan(
                    text: ' Per Hour',
                    style: TextStyle(
                      color: hoverd ? Colors.white : null,
                    )),
              ])),
          SizedBox(
            height: 150,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 35),
              itemCount: remotePricePlans[index]['services']!.length,
              itemBuilder: (context, index2) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(checkMark, height: 20, width: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        remotePricePlans[index]['services']![index2],
                        style: TextStyle(color: hoverd ? Colors.white : null),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          CupertinoButton(
            color: hoverd? Colors.blue: primaryColor,
            onPressed: () {},
            child: Text('Deal Now'),
          ),
        ],
      ),
    );
  }
}
