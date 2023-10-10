import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:updateportfolio/components/constants/constants.dart';
import 'package:updateportfolio/views/homeScreen/provider/home_page_provider.dart';

import 'components/side_menu.dart';

class HomeScreenViewWeb extends StatelessWidget {
  const HomeScreenViewWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final homePageProvider = Provider.of<HomePageProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: sideMenu(context),
            ),
            Expanded(
              flex: 14,
              child: responsePages[homePageProvider.pageIndex],
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: actionIcons.asMap().entries.map((e){
                    return IconButton(
                      onPressed: (){
                        homePageProvider.setPageIndex(e.key);
                      },
                      icon: Icon(e.value),
                    );
                  }).toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
