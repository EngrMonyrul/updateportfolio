import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../components/constants/constants.dart';
import '../../provider/home_page_provider.dart';

Container reviewSectionLMobile(BuildContext context, HomePageProvider homePageProvider) {
  return Container(
    height: MediaQuery.of(context).size.height/1.4,
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.symmetric(horizontal: 15),
    child: CarouselSlider.builder(
      itemCount: reviews.length,
      options: CarouselOptions(
        viewportFraction: 0.8,
        autoPlay: true,
        enlargeCenterPage: true,
        animateToClosest: true,
        autoPlayInterval: const Duration(seconds: 5),
      ),
      itemBuilder: (context, index, realIndex) {
        return MouseRegion(
            onEnter: (_) {
              homePageProvider.setReviewHovered(index);
            },
            onExit: (_) {
              homePageProvider.setReviewHovered(-1);
            },
            child: ContainerArea(index: index, hovered: index == homePageProvider.reviewHovered));
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
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.4,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              color: hovered? Colors.pink:Color(0xFF242430),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      reviews[index]['name'],
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.white,
                        fontSize: hovered? 20: 15,
                      ),
                    ),
                    Text(
                      '${reviews[index]['designation']}, ${reviews[index]['company']}',
                      style: TextStyle(
                        color: hovered? Colors.white: null,
                        fontSize: hovered? 15: null,
                      ),
                    )
                  ],
                ),
                Text(
                  reviews[index]['description'],
                  style: TextStyle(
                    color: hovered? Colors.white:null,
                  ),
                ),
                Container(
                  height: 25,
                  width: 95,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: hovered? Colors.white: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: reviews[index]['stars'],
                    itemBuilder: (context, index) {
                      return Icon(Icons.star, color: Colors.orange, size: 15);
                    },
                  ),
                ),
                Center(
                  child: CupertinoButton(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    color: hovered? Colors.blue: primaryColor,
                    onPressed: () {},
                    child: Text('Leave A Comment'),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -40,
            right: 30,
            child: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(reviews[index]['image']),
            ),
          ),
        ],
      ),
    );
  }
}
