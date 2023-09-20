import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rive/rive.dart';
import 'package:riveapptwo/01.%20Splash/Controller/splash_crt.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});

  final SplashScreenController controller = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    controller.navigateToHome();
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(48.0),
        child: RiveAnimation.asset(
          'assets/cat.riv',
        ),
      ),
    );
  }
}
