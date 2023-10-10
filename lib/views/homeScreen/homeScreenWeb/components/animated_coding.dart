import 'package:flutter/material.dart';

import '../../../../components/constants/constants.dart';

class AnimatedCoding extends StatelessWidget {
  final dynamic title, value;

  const AnimatedCoding({super.key, this.title, this.value});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: value),
      duration: defaultDuration,
      builder: (context, value, child) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: TextStyle(color: Colors.white)),
                Text((value * 100).toInt().toString() + '%'),
              ],
            ),
            SizedBox(height: defaultPadding / 3),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
          ],
        );
      },
    );
  }
}