import 'package:flutter/material.dart';

import '../../../../components/constants/constants.dart';

AspectRatio myInfo(BuildContext context) {
  return AspectRatio(
    aspectRatio: 1.23,
    child: Container(
      color: Color(0xFF242430),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Spacer(flex: 2),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(profilePic),
          ),
          Spacer(),
          Text(
            profileName,
            style: Theme.of(context).textTheme.subtitle2,
          ),
          Text(
            profileBio,
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1.5,
              fontWeight: FontWeight.w200,
            ),
          ),
          Spacer(flex: 2),
        ],
      ),
    ),
  );
}