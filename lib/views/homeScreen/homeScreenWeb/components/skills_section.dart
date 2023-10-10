import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:updateportfolio/views/homeScreen/homeScreenWeb/components/personal_info_text.dart';
import 'package:updateportfolio/views/homeScreen/homeScreenWeb/components/skills_root.dart';
import '../../../../components/constants/constants.dart';
import 'animated_coding.dart';
import 'animated_root.dart';
import 'animated_skills.dart';
import 'knowledge_section.dart';

Expanded skillsSection(BuildContext context) {
  return Expanded(
    child: SingleChildScrollView(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          for (int i = 0; i < personalInfoList.length; i++)
            PersonalInfoText(title: personalInfoList[i]['title'], description: personalInfoList[i]['description']),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
            child: Text('Skills', style: Theme.of(context).textTheme.subtitle2),
          ),
          skillRoot(),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
            child: Text('Coding', style: Theme.of(context).textTheme.subtitle2),
          ),
          animatedRoot(),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
            child: Text('Knowledge', style: Theme.of(context).textTheme.subtitle2),
          ),
          knowledgeSection(),
          CupertinoButton(
            onPressed: (){},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Download CV', style: TextStyle(color: Colors.white)),
                SizedBox(width: 10),
                Image.asset(downloadIcon, height: 20,)
              ],
            ),
          )
        ],
      ),
    ),
  );
}
