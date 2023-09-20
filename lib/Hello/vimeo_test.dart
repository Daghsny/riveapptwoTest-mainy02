import 'package:flutter/material.dart';
import 'package:vimeo_player_flutter/vimeo_player_flutter.dart';

class MyVimeoPage extends StatefulWidget {
  const MyVimeoPage({super.key});

  @override
  State<MyVimeoPage> createState() => _MyVimeoPageState();
}

class _MyVimeoPageState extends State<MyVimeoPage> {

  String videoId = '70591644';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 250,
              child: VimeoPlayer(
                videoId: videoId,
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}




