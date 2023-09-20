import 'package:flutter/material.dart';
import 'package:riveapptwo/00.%20Components/const.dart';
import 'package:riveapptwo/00.%20Components/image_container.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        
        padding: const EdgeInsets.all(8),
        width: double.infinity,
        decoration: BoxDecoration(
          color: kColors15,
          borderRadius: BorderRadius.circular(24),
          
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ImageContainer(
              height: double.infinity,
              widht: MediaQuery.of(context).size.width * 0.6,
              imgUrl:
                  'https://pbs.twimg.com/media/DaBM6sjXUAAea_o?format=jpg&name=small',
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Don't  forget this discout",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontFamily: 'Bebas', color: kColors12),
                  ),
                  Text(
                    "56% OFF",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontFamily: 'Bebas', color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
