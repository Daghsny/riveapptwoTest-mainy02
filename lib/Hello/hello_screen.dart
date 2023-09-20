import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:riveapptwo/00.%20Components/const.dart';
import 'package:riveapptwo/00.%20Components/glow_box.dart';
import 'package:riveapptwo/00.%20Components/my_text_field.dart';

import 'package:riveapptwo/00.%20Model/article.dart';
import 'package:riveapptwo/00.%20Model/teacher.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../00. Components/custom_tag.dart';
import '../00. Components/image_container.dart';
import '../00. Components/my_card.dart';

class HelloScreen extends StatelessWidget {
  HelloScreen({
    super.key,
  });

  final Article article = Article.articles[0];
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            )),
      ),
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          _LastOfTheDay(article: article),
          _BreakingOfTheday(articles: Article.articles),
          _TeachersCurrent(teachers: Teacher.teachers),
        ],
      ),
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
          activeColor: kColors11, // selected icon and text color
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

class _BreakingOfTheday extends StatelessWidget {
  const _BreakingOfTheday({
    super.key,
    required this.articles,
  });

  final List<Article> articles;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Breaking News",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      //fontWeight: FontWeight.bold,
                      fontFamily: 'Bebas',
                    ),
              ),
              Text(
                "More",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    //fontWeight: FontWeight.bold,
                    fontFamily: 'Bebas'),
              ),
            ],
          ),
          SizedBox(
            height: 270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return Container(
                  //color: Colors.pinkAccent.shade400,
                  width: MediaQuery.of(context).size.width * 0.5,
                  margin: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {
                      Get.toNamed(
                        '/coursetesto',
                        arguments: articles[index],
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ImageContainer(
                          widht: MediaQuery.of(context).size.width * 0.5,
                          imgUrl: articles[index].imageUrl,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          articles[index].title,
                          maxLines: 2,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontWeight: FontWeight.bold, height: 1.5),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          articles[index].author,
                          maxLines: 2,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.w100,
                                  height: 1.5,
                                  fontFamily: 'bebas'),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '${DateTime.now().difference(articles[index].createdAt).inHours} hours ago',
                          maxLines: 2,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    height: 1.5,
                                  ),
                        ),
                        Text(
                          'by ${articles[index].author}',
                          maxLines: 2,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    height: 1.5,
                                  ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class _TeachersCurrent extends StatelessWidget {
  const _TeachersCurrent({
    super.key,
    required this.teachers,
  });

  final List<Teacher> teachers;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Current Teachers",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      //fontWeight: FontWeight.bold,
                      fontFamily: 'Bebas',
                    ),
              ),
              Text(
                "Show All",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    //fontWeight: FontWeight.bold,
                    fontFamily: 'Bebas'),
              ),
            ],
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: teachers.length,
              itemBuilder: (context, index) {
                return Container(
                  //color: Colors.amberAccent.shade100,
                  // width: MediaQuery.of(context).size.width * 0.5,
                  margin: const EdgeInsets.only(right: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          border: Border.all(
                            color: kColors15,
                            width: 3,
                          ),
                        ),
                        child: ImageContainer(
                          widht: MediaQuery.of(context).size.width * 0.3,
                          imgUrl: teachers[index].imageUrl,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        teachers[index].author,
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontWeight: FontWeight.bold, height: 1.5),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class _LastOfTheDay extends StatelessWidget {
  _LastOfTheDay({
    super.key,
    required this.article,
  });

  final Article article;
  /* 
  Page Controller
  */
  final _controller = PageController();

  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: MediaQuery.of(context).size.height * 0.65,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
        color: kColors12,
      ),

      // ImageContainer(
      //   height: 450,
      //   //height: MediaQuery.of(context).size.height * 0.65,
      //   widht: double.infinity,
      //   padding: const EdgeInsets.all(20),
      //   imgUrl:
      //       'https://img.freepik.com/vecteurs-libre/aquarelle-retour-au-fond-ecole-espace-blanc_52683-41450.jpg?w=740&t=st=1694447397~exp=1694447997~hmac=b328af2284577a6c45b27bcb750b00be7e194b966737ec8967648fc9e4ff79f2',
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(width: 10,),
                Text(
                  'Welcome !!',
                  style: TextStyle(
                    color: kColors15,
                    fontFamily: 'Bebas',
                    fontSize: 48,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Mike',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Bebas',
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 52,
                      width: 52,
                      child: CircleAvatar(
                        backgroundColor: kColors15,
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?size=626&ext=jpg&ga=GA1.2.1258295344.1678644097&semt=sph',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),

            // CustomTag(
            //   backgroundColor: Colors.white.withAlpha(150),
            //   children: [
            //     Text(
            //       "N e w s   o f   t h e   d a y",
            //       style: Theme.of(context)
            //           .textTheme
            //           .bodyMedium!
            //           .copyWith(fontFamily: 'Bebas', color: Colors.white),
            //     ),
            //   ],
            // ),

            const SizedBox(
              height: 8,
            ),
            MyTextFiel(
              controller: searchController,
              hintText: 'Search',
              obscuredText: false,
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Topics',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      height: 1.25,
                      color: Colors.white),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  child: Row(
                    children: [
                      Text(
                        'Shaw More',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            height: 1.25,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.arrow_right_alt,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: const [
                  CustomTag(
                    backgroundColor: kColors13,
                    children: [Text('Physique')],
                  ),
                  SizedBox(width: 8),
                  CustomTag(
                    backgroundColor: kColors13,
                    children: [Text('Geo')],
                  ),
                  SizedBox(width: 8),
                  CustomTag(
                    backgroundColor: kColors13,
                    children: [Text('matimatique')],
                  ),
                  SizedBox(width: 8),
                  CustomTag(
                    backgroundColor: kColors13,
                    children: [Text('Physique')],
                  ),
                  SizedBox(width: 8),
                  CustomTag(
                    backgroundColor: kColors13,
                    children: [Text('Geo')],
                  ),
                  SizedBox(width: 8),
                  CustomTag(
                    backgroundColor: kColors13,
                    children: [Text('matimatique')],
                  ),
                  SizedBox(width: 8),
                ],
              ),
            ),
            // Text(
            //   article.title,
            //   style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            //       fontWeight: FontWeight.bold,
            //       height: 1.25,
            //       color: Colors.white),
            // ),

            const SizedBox(
              height: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 180,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    controller: _controller,
                    children: const [
                      MyCard(),
                      MyCard(),
                      MyCard(),
                      MyCard(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 4,
                  effect: const ExpandingDotsEffect(
                    dotColor: kColors13,
                    activeDotColor: Colors.white,
                    dotHeight: 10,
                    dotWidth: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
