import 'package:flutter/material.dart';

import '../../../components/constants/constants.dart';
import 'animated_skills.dart';

Widget skillRoot() {
  return SizedBox(
    height: 168,
    child: GridView.builder(
      itemCount: skillsList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
            child: AnimatedSkills(title: skillsList[index]['title'], value: skillsList[index]['value']),
          ),
        );
      },
    ),
  );
}
