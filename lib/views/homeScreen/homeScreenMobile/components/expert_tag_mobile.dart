import 'package:flutter/material.dart';

import '../../../../components/constants/constants.dart';

Row expertTagMobile(value, title) {
  return Row(
    children: [
      TweenAnimationBuilder(
        tween: Tween<double>(begin: 10, end: value),
        duration: defaultDuration,
        builder: (context, value, child) {
          return Text(
            value.toInt().toString() + '+',
            style: TextStyle(
              color: primaryColor,
              fontSize: 20,
            ),
          );
        },
      ),
      Text(
        title,
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      )
    ],
  );
}