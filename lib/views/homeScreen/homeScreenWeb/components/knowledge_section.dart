import 'package:flutter/material.dart';

import '../../../../components/constants/constants.dart';

SizedBox knowledgeSection() {
  return SizedBox(
    height: 200,
    child: Column(
      children: knowledgeList.map((e){
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(checkMark, height: 20),
              SizedBox(width: 10),
              Text(e['title'], style: TextStyle(color: Colors.white)),
            ],
          ),
        );
      }).toList(),
    ),
  );
}