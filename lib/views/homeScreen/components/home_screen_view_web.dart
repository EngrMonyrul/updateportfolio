import 'package:flutter/material.dart';
import 'package:updateportfolio/components/constants/constants.dart';

import 'side_menu.dart';

class HomeScreenViewWeb extends StatelessWidget {
  const HomeScreenViewWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 4,
            child: sideMenu(context),
          ),
          Expanded(
            flex: 14,
            child: Container(
              color: Colors.green,
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: actionIcons.map((e){
                  return IconButton(
                    onPressed: (){},
                    icon: Icon(e),
                  );
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
