import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:updateportfolio/components/constants/constants.dart';
import 'package:updateportfolio/views/homeScreen/components/my_info.dart';
import 'package:updateportfolio/views/homeScreen/components/personal_info_text.dart';
import 'package:updateportfolio/views/homeScreen/components/skills_section.dart';

import 'animated_skills.dart';

Drawer sideMenu(BuildContext context) {
  return Drawer(
    child: Column(
      children: [
        myInfo(context),
        skillsSection(context),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: socialList.map((e) {
            return CupertinoButton(
              onPressed: () {},
              child: SizedBox(height: 30, width: 30, child: Image.asset(e['image'], fit: BoxFit.fill)),
            );
          }).toList(),
        )
      ],
    ),
  );
}