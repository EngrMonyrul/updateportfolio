import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../views/homeScreen/homeScreenWeb/components/about_page_view_area.dart';
import '../../views/homeScreen/homeScreenWeb/components/project_page_view_area.dart';
import '../../views/homeScreen/homeScreenWeb/home_page_view_area.dart';

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
const double experienceYear = 1;
const double projects = 60;
const double company = 1;

/*---------------> App images & icons <---------------*/
const profilePic = 'assets/images/owner_image.jpg';
const checkMark = 'assets/icons/check_mark_ic.png';
const downloadIcon = 'assets/icons/download_ic.png';
const bgRemovedProfile = 'assets/images/removed_bg_profile.png';
const bgImage = 'assets/images/background_image.jpg';

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
  CupertinoIcons.info,
];
List<Widget> responsePages = [
  const HomePageViewArea(),
  const ProjectPageViewArea(),
  const AboutPageViewArea(),
];
const List<Map<String, dynamic>> serviceList = [
  {
    'title': 'Web Development',
    'description': 'Responsive web development using flutter. Also web development with HTML, CSS, JavaScript.',
  },
  {
    'title': 'Android App Development',
    'description': 'Responsive android app development using flutter.',
  },
  {
    'title': 'IOS App Development',
    'description': 'Responsive app development using flutter.',
  },
  {
    'title': 'Windows App Development',
    'description': 'Responsive app development using flutter.',
  },
  {
    'title': 'Linux App Development',
    'description': 'Responsive app development using flutter.',
  },
  {
    'title': 'Backend Development',
    'description': 'Fully backend development using Django.',
  },
];

const List<Map<String, List<dynamic>>> remotePricePlans = [
  {
    'basic': [
      'Starter Payment',
      '5',
    ],
    'services': [
      'Web Development',
      'App Development',
      'Front-End Development',
    ],
  },
  {
    'basic': [
      'Hourly Payment',
      '20',
    ],
    'services': [
      'Web Development',
      'App Development',
      'Front-End Development',
      'Back-End Development',
    ],
  },
  {
    'basic': [
      'Full Time',
      '15',
    ],
    'services': [
      'Web Development',
      'App Development',
      'Front-End Development',
      'Back-End Development',
      'RESTApi',
      'Company All Services',
    ],
  },
];

const Map<String, dynamic> jobSalaryPlans = {'Current Salary': '137', 'Expected Salary': '273'};

const List<Map<String, dynamic>> reviews = [
  {
    'name': 'Ariful Islam Rana',
    'image': 'assets/images/person1.jpg',
    'designation': 'Team Leader',
    'company': 'Brain Station',
    'description':
        'Working with Monirul Islam has been a pleasure. Better yet - I alerted him of a minor issue before going to sleep. The issue was fixed the next morning. I couldn\'t ask for better support. Thank you Monirul Islam! This a easily a 5 start employee.',
    'stars': 5,
  },
  {
    'name': 'Ariful Islam Rana',
    'image': 'assets/images/person1.jpg',
    'company': 'Brain Station',
    'designation': 'Team Leader',
    'description':
        'Working with Monirul Islam has been a pleasure. Better yet - I alerted him of a minor issue before going to sleep. The issue was fixed the next morning. I couldn\'t ask for better support. Thank you Monirul Islam! This a easily a 5 start employee.',
    'stars': 4,
  },
  {
    'name': 'Ariful Islam Rana',
    'image': 'assets/images/person1.jpg',
    'company': 'Brain Station',
    'designation': 'Team Leader',
    'description':
        'Working with Monirul Islam has been a pleasure. Better yet - I alerted him of a minor issue before going to sleep. The issue was fixed the next morning. I couldn\'t ask for better support. Thank you Monirul Islam! This a easily a 5 start employee.',
    'stars': 3,
  },
  {
    'name': 'Ariful Islam Rana',
    'image': 'assets/images/person1.jpg',
    'company': 'Brain Station',
    'designation': 'Team Leader',
    'description':
        'Working with Monirul Islam has been a pleasure. Better yet - I alerted him of a minor issue before going to sleep. The issue was fixed the next morning. I couldn\'t ask for better support. Thank you Monirul Islam! This a easily a 5 start employee.',
    'stars': 2,
  },
  {
    'name': 'Ariful Islam Rana',
    'image': 'assets/images/person1.jpg',
    'company': 'Brain Station',
    'designation': 'Team Leader',
    'description':
        'Working with Monirul Islam has been a pleasure. Better yet - I alerted him of a minor issue before going to sleep. The issue was fixed the next morning. I couldn\'t ask for better support. Thank you Monirul Islam! This a easily a 5 start employee.',
    'stars': 1,
  },
];
List<Map<String, dynamic>> workedCompanies = [
  {
    'name': 'Clipping World',
    'image': 'assets/images/clipping_world_company_image.png',
    'link': 'https://www.clippingworld.com/',
  }
];
