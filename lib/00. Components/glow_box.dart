import 'dart:ui';

import 'package:flutter/material.dart';

class GlowBox extends StatelessWidget {
  final  Widget child;
   const GlowBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: const  BorderRadius.all(Radius.circular(32)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            decoration: const BoxDecoration(
                //border: Border.all(color: Colors.black, width: 0.5),
                borderRadius: BorderRadius.all(Radius.circular(60))),
            padding: const EdgeInsets.all(8.0),
            // margin: const EdgeInsets.all(8.0),
            child: child,
          ),
        ),
      ),
    );
  }
}
