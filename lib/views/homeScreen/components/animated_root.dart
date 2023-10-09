import 'package:flutter/material.dart';

import '../../../components/constants/constants.dart';
import 'animated_coding.dart';

SizedBox animatedRoot() {
  return SizedBox(
    height: 100,
    child: ListView.builder(
      itemCount: codingList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: AnimatedCoding(title: codingList[index]['title'], value: codingList[index]['value']),
        );
      },
    ),
  );
}