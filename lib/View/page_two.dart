import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green.shade100,
        child: const Center(
          child: Text("Page 02"),
        ));
  }
}
