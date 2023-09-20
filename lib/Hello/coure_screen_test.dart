import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riveapptwo/00.%20Components/const.dart';
import 'package:riveapptwo/00.%20Model/article.dart';

import '../00. Components/image_container.dart';

// ignore: must_be_immutable
class TstTabPage extends StatelessWidget {
  TstTabPage({super.key});

  int currentBottomIndex = 0;
  void handelBottomIndexChange(index) {
    currentBottomIndex = index;
  }

  final articles = Article.articles;
  List<String> tabs = [
    "philosophia",
    "mathematiques",
    "info",
    "arabic",
    "french"
  ];
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
                actions: [
                  Icon(
                    Icons.search,
                  ),
                ],
                leading: Icon(
                  Icons.menu,
                ),
                flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    "T a b B a r zone",
                    style: TextStyle(
                      fontFamily: 'bebas',
                      fontSize: 32,
                      color: Colors.black,
                    ),
                  ),
                ),
                centerTitle: true,
                expandedHeight: 200,
                pinned: true,
                backgroundColor: kColors15),
            SliverAppBar(
              title: Align(
                child: TabBar(
                  labelColor: Colors.black,
                  labelStyle: const TextStyle(
                    fontSize: 22.0,
                    fontFamily: 'Bebas',
                  ),
                  unselectedLabelStyle: const TextStyle(
                      fontSize: 18.0,
                      //fontWeight: FontWeight.bold,
                      fontFamily: 'Bebas'),
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: kColors15,
                  isScrollable: true,
                  tabs: tabs
                      .map(
                        (tab) => Tab(
                          icon: Text(
                            tab,
                            // style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            //       fontWeight: FontWeight.normal,
                            //       fontFamily: 'Bebas',
                            //       // color: Colors.grey,
                            //     ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 800,
                child: TabBarView(
                  children: tabs
                      .map(
                        (tab) => ListView.builder(
                            controller: scrollController,
                            itemCount: articles.length,
                            itemBuilder: ((context, index) {
                              return InkWell(
                                onTap: () {
                                  Get.toNamed(
                                    '/discover',
                                    arguments: articles[index],
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Container(
                                          height: 120,
                                          width: 220,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade100,
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 0.3,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(12),
                                              bottomLeft: Radius.circular(32),
                                              topRight: Radius.circular(32),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 23.0,
                                            ),
                                            child: Text(
                                              articles[index].category,
                                              // style: TextStyle(
                                              //     color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Colors.grey.shade100,
                                            borderRadius:
                                                const BorderRadius.only(
                                              // topLeft: Radius.circular(12),
                                              bottomLeft: Radius.circular(32),
                                              topRight: Radius.circular(32),
                                            ),
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 0.3,
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              ImageContainer(
                                                  widht: 80,
                                                  height: 80,
                                                  margin:
                                                      const EdgeInsets.all(10),
                                                  borderRadius: 5,
                                                  imgUrl:
                                                      articles[index].imageUrl),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      articles[index].title,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.clip,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyLarge!
                                                          .copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                    ),
                                                    const SizedBox(
                                                      height: 8,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Icon(
                                                          Icons.schedule,
                                                          size: 18,
                                                          color: Colors.white,
                                                        ),
                                                        const SizedBox(
                                                          width: 8,
                                                        ),
                                                        Text(
                                                          '${DateTime.now().difference(articles[index].createdAt).inHours} hours ago',
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 12,
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 20,
                                                        ),
                                                        const Icon(
                                                          Icons.visibility,
                                                          size: 18,
                                                          color: Colors.white,
                                                        ),
                                                        const SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text(
                                                          '${articles[index].views} views',
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 12,
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ]),
                                ),
                              );
                            })),
                      )
                      .toList(),
                ),
              ),
            ),
          ],
        ));
  }
}
