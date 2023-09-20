import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riveapptwo/00.%20Components/glow_box.dart';
import 'package:riveapptwo/00.%20Components/my_bt_nav_bar.dart';
import 'package:riveapptwo/04.%20DashBoard/Controller/dash_board_crt.dart';
import 'package:riveapptwo/View/page_four.dart';
import 'package:riveapptwo/View/page_three.dart';

class DashBoardPage extends StatelessWidget {
  DashBoardPage({super.key});

  final DashBoardController controller = Get.put(DashBoardController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: Center(
          child: Obx(() => IndexedStack(
                index: controller.selectedIndex.value,
                children: const [
                   PageFour(),
                   PageFour(),
                   PageThree(),
                   PageThree(),
                   PageFour(),
                ],
              )),
        ),
        bottomNavigationBar: GlowBox(
          child: MyButtomNavBar(
            index: controller.selectedIndex.value,
            onTap: controller.changeIndex,
          ),
        ));
  }
}
