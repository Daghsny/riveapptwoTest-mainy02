import 'package:get/get.dart';
import 'package:riveapptwo/02.%20OnBoard/View/onboarding_screen.dart';

class SplashScreenController extends GetxController {
  navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 7500), () {});
    Get.offAll(const OboardScrenn());
    update();
  }
}
