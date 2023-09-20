import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:riveapptwo/00.%20Components/const.dart';
import 'package:riveapptwo/00.%20Components/glow_box.dart';
import 'package:riveapptwo/Hello/coure_screen_test.dart';

class Pagethreetestoo extends StatelessWidget {
  const Pagethreetestoo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: TstTabPage(),
      bottomNavigationBar: GlowBox(
        child: GNav(
          backgroundColor: Colors.transparent,
          selectedIndex: 0,
          onTabChange: (index) {},
          rippleColor: kColors15,
          // tab button ripple color when pressed
          //hoverColor: Colors.green, // tab button hover color
          //haptic: true, // haptic feedback
          tabBorderRadius: 100,
          tabActiveBorder: Border.all(
            color: kColors15,
            width: 1,
          ), // tab button border
          tabBorder:
              Border.all(color: kColors11, width: 0.5), // tab button border
          // tab button shadow
          curve: Curves.ease, // tab animation curves wen tapped
          duration: const Duration(milliseconds: 400), // tab animation duration
          gap: 8, // the tab button gap between icon and text
          color: kColors12.withOpacity(0.9), // unselected icon color
          activeColor: kColors12, // selected icon and text color
          iconSize: 24, // tab button icon size
          tabBackgroundColor:
              kColors15.withOpacity(0.3), // selected tab background color
          padding: const EdgeInsets.symmetric(
              horizontal: 20, vertical: 5), // navigation bar padding
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.favorite,
              text: 'Likes',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.ac_unit_outlined,
              text: 'Profile',
            )
          ],
        ),
      ),
    );
  }
}
