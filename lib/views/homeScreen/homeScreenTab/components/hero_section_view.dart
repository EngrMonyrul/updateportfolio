import 'dart:ui';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../../components/constants/constants.dart';

Container heroSectionTab(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.6,
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(bgImage),
        fit: BoxFit.fill,
      ),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 30),
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(bgImage),
              fit: BoxFit.fill,
              opacity: 0.5,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'B.Sc in Engineering',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Hi, I\'m ',
                              style: TextStyle(fontSize: 30),
                            ),
                            AnimatedTextKit(
                              isRepeatingAnimation: true,
                              repeatForever: true,
                              animatedTexts: [
                                FadeAnimatedText('Monirul Islam',
                                    textStyle: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 30,
                                      color: primaryColor,
                                    )),
                                FadeAnimatedText('An Apps Developer',
                                    textStyle: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 30,
                                      color: primaryColor,
                                    )),
                                FadeAnimatedText('An Web Developer',
                                    textStyle: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 30,
                                      color: primaryColor,
                                    )),
                                FadeAnimatedText('A Front-End Developer',
                                    textStyle: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 30,
                                      color: primaryColor,
                                    )),
                                FadeAnimatedText('A Back-End Developer',
                                    textStyle: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontSize: 30,
                                      color: primaryColor,
                                    )),
                              ],
                            )
                          ],
                        )),
                    Text(
                      'from Bangladesh',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Image.asset(bgRemovedProfile, fit: BoxFit.fill),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
