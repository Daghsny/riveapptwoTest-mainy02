import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import '../00. Components/image_container.dart';
import '../00. Model/article.dart';

class DiscoverScreen extends StatelessWidget {
   DiscoverScreen({super.key});
var articles = Get.arguments! as Article;
  @override
  Widget build(BuildContext context) {
    return  ImageContainer(
      //height: double.infinity,
      widht: double.infinity,
      imgUrl: articles.imageUrl,
      child: Scaffold(
        extendBody: true,
        appBar: AppBar(backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),),
        body: ImageContainer  (imgUrl:articles.imageUrl,   widht: double.infinity ,),
      )
    );
  }
}