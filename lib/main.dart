import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:updateportfolio/components/constants/constants.dart';
import 'package:updateportfolio/views/homeScreen/components/home_screen_view_web.dart';
import 'package:updateportfolio/views/homeScreen/home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio - Monirul Islam',
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.white)
          .copyWith(
            bodyText1: const TextStyle(color: bodyTextColor),
            bodyText2: const TextStyle(color: bodyTextColor),
          ),
      ),
      home: const HomeScreen(),
    );
  }
}
