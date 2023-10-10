import 'package:flutter/material.dart';

import '../../../../components/constants/constants.dart';

class AnimatedSkills extends StatelessWidget {
  final dynamic value, title;

  const AnimatedSkills({Key? key, this.value, this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: value),
            duration: defaultDuration,
            builder: (context, value, child) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    value: value,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          (value * 100).toInt().toString() + '%',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Text(
                          title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        ),
        // const SizedBox(height: defaultPadding / 2),
      ],
    );
  }
}