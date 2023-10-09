import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*---------------> App colors <---------------*/
const primaryColor = Color(0xFFFFC107);
const secondaryColor = Color(0xFF242430);
const darkColor = Color(0xFF191923);
const bodyTextColor = Color(0xFF8B8B8D);
const bgColor = Color(0xFF1E1E28);

/*---------------> App utils <---------------*/
const defaultPadding = 20.0;
const defaultDuration = Duration(seconds: 1);
const maxWidth = 1440.0;

/*---------------> App images & icons <---------------*/
const profilePic = 'assets/images/owner_image.jpg';
const checkMark = 'assets/icons/check_mark_ic.png';
const downloadIcon = 'assets/icons/download_ic.png';

/*---------------> App texts <---------------*/
const profileName = 'Monirul Islam';
const profileBio = '</> Flutter Developer, Django Developer & Programmer </>';
const List<Map<String, String>> personalInfoList = [
  {'title': 'Residence', 'description': 'Bangladesh'},
  {'title': 'City', 'description': 'Dhaka'},
  {'title': 'Age', 'description': '23'},
];
const List<Map<String, dynamic>> skillsList = [
  {'title': 'Flutter', 'value': 0.7},
  {'title': 'Django', 'value': 0.4},
  {'title': 'Firebase', 'value': 0.8},
  {'title': 'HTML', 'value': 0.8},
  {'title': 'CSS', 'value': 0.8},
  {'title': 'MySQL', 'value': 0.8},
];
const List<Map<String, dynamic>> codingList = [
  {'title': 'Dart', 'value': 0.8},
  {'title': 'Java', 'value': 0.8},
  {'title': 'Python', 'value': 0.8},
  {'title': 'C', 'value': 0.8},
  {'title': 'C++', 'value': 0.8},
  {'title': 'JS', 'value': 0.8},
  {'title': 'PHP', 'value': 0.8},
];
const List<Map<String, dynamic>> knowledgeList = [
  {'title': 'Widget', 'value': 0.8},
  {'title': 'Provider', 'value': 0.8},
  {'title': 'Bloc', 'value': 0.8},
  {'title': 'Animation', 'value': 0.8},
  {'title': 'Navigation', 'value': 0.8},
];
const List<Map<String, dynamic>> socialList = [
  {'image': 'assets/icons/facebook_ic.png', 'link': ''},
  {'image': 'assets/icons/github_ic.png', 'link': ''},
  {'image': 'assets/icons/instagram_ic.png', 'link': ''},
];
List<dynamic> actionIcons = [
  CupertinoIcons.home,
  CupertinoIcons.app_badge,
  CupertinoIcons.person,
];
