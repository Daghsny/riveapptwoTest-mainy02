import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:riveapptwo/01.%20Splash/View/splash_screen.dart';
import 'package:riveapptwo/Hello/coure_screen_test.dart';
import 'package:riveapptwo/Hello/course_screen.dart';
import 'package:riveapptwo/Hello/coursetestthree.dart';
import 'package:riveapptwo/Hello/discover_screen.dart';
import 'package:riveapptwo/Hello/hello_screen.dart';
import 'package:riveapptwo/Hello/vimeo_test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/Hello', page: () => HelloScreen()),
        GetPage(name: '/discover', page: () => DiscoverScreen()),
        GetPage(name: '/course', page: () => TstTabPage()),
        GetPage(name: '/coursetesto', page: () => Pagethreetestoo()),
      ],
      home: MyVimeoPage(),
    );
  }
}
