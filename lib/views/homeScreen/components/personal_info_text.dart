import 'package:flutter/material.dart';

import '../../../components/constants/constants.dart';

class PersonalInfoText extends StatelessWidget {
  final String? title, description;

  const PersonalInfoText({Key? key, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            description!,
          ),
        ],
      ),
    );
  }
}