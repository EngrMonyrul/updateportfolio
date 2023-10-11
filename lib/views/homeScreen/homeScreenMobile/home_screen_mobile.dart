import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:updateportfolio/views/homeScreen/homeScreenTab/components/drawer_section_tab.dart';

import '../../../components/constants/constants.dart';
import '../homeScreenWeb/components/side_menu.dart';
import '../provider/home_page_provider.dart';

class HomeScreenMobileView extends StatelessWidget {
  const HomeScreenMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    final homePageProvider = Provider.of<HomePageProvider>(context);
    return Scaffold(
      drawer: sideMenuTab(context),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: AnimatedTextKit(
          animatedTexts: [
            FadeAnimatedText(
              'Welcome To Portfolio Of',
              textStyle: TextStyle(
                color: primaryColor,
              ),
            ),
            FadeAnimatedText(
              'Monirul Islam',
              textStyle: TextStyle(
                color: primaryColor,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: (){
              homePageProvider.setShowCButtons();
            },
            icon: Icon(CupertinoIcons.archivebox),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 14,
              child: responsePagesLMobile[homePageProvider.pageIndex],
            ),
            Visibility(
              visible: homePageProvider.showCButtons,
              child: Expanded(
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
