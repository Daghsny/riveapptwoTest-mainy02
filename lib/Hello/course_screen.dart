// import 'package:flutter/material.dart';
// import 'package:get/route_manager.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:riveapptwo/Components/const.dart';
// import 'package:riveapptwo/Components/glow_box.dart';
// import 'package:riveapptwo/Hello/Components/image_container.dart';
// import 'package:riveapptwo/Hello/Model/article.dart';

// class CourseScreen extends StatelessWidget {
//   const CourseScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     List<String> tabs = [
//       "philosophia",
//       "mathematiques",
//       "info",
//       "arabic",
//       "french"
//     ];
//     return DefaultTabController(
//       initialIndex: 0,
//       length: tabs.length,
//       child: Scaffold(
//         extendBody: true,
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           leading: IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.menu,
//                 //color: Colors.white,
//               )),
//         ),
//         extendBodyBehindAppBar: true,
//         body: ListView(
//           padding: const EdgeInsets.all(20),
//           children: [
//             const _DiscoverCourses(),
//             _CathegoryCourses(tabs: tabs),
//           ],
//         ),
//         bottomNavigationBar: GlowBox(
//           child: GNav(
//             backgroundColor: Colors.transparent,
//             selectedIndex: 0,
//             onTabChange: (index) {},
//             rippleColor: kColors15,
//             // tab button ripple color when pressed
//             //hoverColor: Colors.green, // tab button hover color
//             //haptic: true, // haptic feedback
//             tabBorderRadius: 100,
//             tabActiveBorder: Border.all(
//               color: kColors15,
//               width: 1,
//             ), // tab button border
//             tabBorder:
//                 Border.all(color: kColors11, width: 0.5), // tab button border
//             // tab button shadow
//             curve: Curves.ease, // tab animation curves wen tapped
//             duration:
//                 const Duration(milliseconds: 400), // tab animation duration
//             gap: 8, // the tab button gap between icon and text
//             color: kColors12.withOpacity(0.9), // unselected icon color
//             activeColor: kColors12, // selected icon and text color
//             iconSize: 24, // tab button icon size
//             tabBackgroundColor:
//                 kColors15.withOpacity(0.3), // selected tab background color
//             padding: const EdgeInsets.symmetric(
//                 horizontal: 20, vertical: 5), // navigation bar padding
//             tabs: const [
//               GButton(
//                 icon: Icons.home,
//                 text: 'Home',
//               ),
//               GButton(
//                 icon: Icons.favorite,
//                 text: 'Likes',
//               ),
//               GButton(
//                 icon: Icons.search,
//                 text: 'Search',
//               ),
//               GButton(
//                 icon: Icons.ac_unit_outlined,
//                 text: 'Profile',
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class _CathegoryCourses extends StatelessWidget {
//   const _CathegoryCourses({
//     super.key,
//     required this.tabs,
//   });

//   final List<String> tabs;
//   @override
//   Widget build(BuildContext context) {
//     final articles = Article.articles;
//     return Column(
//       children: [
//         TabBar(
//           labelColor: Colors.black,
//           labelStyle: const TextStyle(fontSize: 22.0, fontFamily: 'Bebas'),
//           unselectedLabelStyle: const TextStyle(
//               fontSize: 18.0,
//               //fontWeight: FontWeight.bold,
//               fontFamily: 'Bebas'),
//           unselectedLabelColor: Colors.grey,
//           indicatorColor: kColors15,
//           isScrollable: true,
//           tabs: tabs
//               .map(
//                 (tab) => Tab(
//                   icon: Text(
//                     tab,
//                     // style: Theme.of(context).textTheme.headlineSmall!.copyWith(
//                     //       fontWeight: FontWeight.normal,
//                     //       fontFamily: 'Bebas',
//                     //       // color: Colors.grey,
//                     //     ),
//                   ),
//                 ),
//               )
//               .toList(),
//         ),
//         SizedBox(
//           height: MediaQuery.of(context).size.height,
//           child: TabBarView(
//             children: tabs
//                 .map(
//                   (tab) => ListView.builder(
//                       itemCount: articles.length,
//                       itemBuilder: ((context, index) {
//                         return InkWell(
//                           onTap: () {
//                             Get.toNamed(
//                               '/discover',
//                               arguments: articles[index],
//                             );
//                           },
//                           child: Row(
//                             children: [
//                               ImageContainer(
//                                   widht: 80,
//                                   height: 80,
//                                   margin: const EdgeInsets.all(10),
//                                   borderRadius: 5,
//                                   imgUrl: articles[index].imageUrl),
//                               Expanded(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       articles[index].title,
//                                       maxLines: 2,
//                                       overflow: TextOverflow.clip,
//                                       style: Theme.of(context)
//                                           .textTheme
//                                           .bodyLarge!
//                                           .copyWith(
//                                               fontWeight: FontWeight.bold),
//                                     ),
//                                     const SizedBox(
//                                       height: 8,
//                                     ),
//                                     Row(
//                                       children: [
//                                         const Icon(
//                                           Icons.schedule,
//                                           size: 18,
//                                           color: Colors.white,
//                                         ),
//                                         const SizedBox(
//                                           height: 8,
//                                         ),
//                                         Text(
//                                           '${DateTime.now().difference(articles[index].createdAt).inHours} hours ago}',
//                                           style: const TextStyle(
//                                             fontSize: 12,
//                                           ),
//                                         ),
//                                         const SizedBox(
//                                           height: 20,
//                                         ),
//                                         const Icon(
//                                           Icons.visibility,
//                                           size: 18,
//                                           color: Colors.white,
//                                         ),
//                                         Text(
//                                           '${articles[index].views} views}',
//                                           style: const TextStyle(
//                                             fontSize: 12,
//                                           ),
//                                         ),
//                                       ],
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );
//                       })),
//                 )
//                 .toList(),
//           ),
//         )
//       ],
//     );
//   }
// }

// class _DiscoverCourses extends StatelessWidget {
//   const _DiscoverCourses({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           //height: MediaQuery.of(context).size.height * 0.25,
//           child: Column(
//             children: [
//               Text(
//                 'DISCOVER',
//                 style: Theme.of(context).textTheme.displayLarge!.copyWith(
//                       //color: Colors.grey,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Bebas',
//                       height: 1.5,
//                     ),
//               ),
//               Text(
//                 'DISCOVER more corses with us',
//                 style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                     //color: Colors.grey,
//                     ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               TextField(
//                   decoration: InputDecoration(
//                 hintText: 'Search',
//                 fillColor: Colors.grey.shade200,
//                 filled: true,
//                 prefixIcon: const Icon(
//                   Icons.search,
//                   color: Colors.grey,
//                 ),
//                 suffixIcon: const Icon(
//                   Icons.tune,
//                   color: Colors.grey,
//                 ),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
//                   borderSide: BorderSide.none,
//                 ),
//               ))
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
