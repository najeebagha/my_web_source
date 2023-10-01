import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../widgets/sampleofmywork.dart';
import '../widgets/whatcanido.dart';

class ScreenThree extends StatelessWidget {
  ScreenThree(
      {super.key,
      required this.myheight,
      required this.mywidth,
      required this.heightPercent,
      required this.widthPercent,
      required this.isMobile});

  final double myheight;
  final double mywidth;
  final double heightPercent;
  final double widthPercent;
  bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: (myheight > mywidth) ? mywidth : (myheight / 3),
        width: (mywidth > myheight) ? myheight : mywidth,
        color: Colors.black,
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              width: myheight * 0.5,
              color: Colors.black,
              // height: myheight * 1,
              child: AutoSizeText(
                'What can I Do ....',
                style: TextStyle(fontSize: (mywidth > myheight) ? 25 : 15),
              ),
            ),
            const WhatCanIDo(),
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.amber,
                          blurRadius: 4,
                          offset: Offset(2, 2)),
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          offset: Offset(-1, -1))
                    ]),
                width: double.infinity,
                height: 64,
                child: Center(
                  child: DefaultTextStyle(
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      shadows: [
                        BoxShadow(
                            color: Colors.blue,
                            blurRadius: 0,
                            offset: Offset(1, 1)),
                        BoxShadow(
                            color: Colors.amber,
                            blurRadius: 1,
                            offset: Offset(-1, -1))
                      ],
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                    child: AnimatedTextKit(
                      totalRepeatCount: 44,
                      animatedTexts: [
                        FadeAnimatedText('Feel Easy'),
                        FadeAnimatedText('to Hire/Contact Us'),
                      ],
                      onTap: () {
                        print("Tap Event");
                      },
                    ),
                  ),
                ),
              ),
            ),
            if (mywidth > myheight)
              const Divider(
                color: Colors.red,
              ),
            const AutoSizeText(
              'Some Samples of my Work',
              style: TextStyle(
                fontSize: 18,
                color: Colors.red,
              ),
              textAlign: TextAlign.center,
            ),
            Expanded(
                child: SampleOfMyWork(
              widthPercent: widthPercent,
              heightPercent: heightPercent,
              myheight: myheight,
              mywidth: mywidth,
            )),
          ],
        ));
  }
}
