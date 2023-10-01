import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'screens/screen_about.dart';
import 'screens/screen_three.dart';
import 'screens/screen_top.dart';

class MobScreen extends StatefulWidget {
  const MobScreen({super.key});

  @override
  State<MobScreen> createState() => _MobScreenState();
}

class _MobScreenState extends State<MobScreen> {
  bool isMobile = true;
  @override
  Widget build(BuildContext context) {
    var myheight = MediaQuery.of(context).size.height * 1;
    var mywidth = MediaQuery.of(context).size.width * 1;

    if (mywidth > myheight) {
      setState(() {
        isMobile = false;
      });
    }

    double heightPercent = MediaQuery.of(context).size.height * 1 / 100;
    double widthPercent = MediaQuery.of(context).size.width * 1 / 100;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: DefaultTextStyle(
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            shadows: [
              BoxShadow(
                  color: Colors.blue, blurRadius: 0, offset: Offset(1, 1)),
              BoxShadow(
                  color: Colors.amber, blurRadius: 1, offset: Offset(-1, -1))
            ],
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
          child: AnimatedTextKit(
            totalRepeatCount: 44,
            animatedTexts: [
              FadeAnimatedText('Najeeb'),
              FadeAnimatedText('Agha'),
              FadeAnimatedText('< / developer >  '),
            ],
            onTap: () {
              print("Tap Event");
            },
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        //  actions: const [Center(child: Text('< / developer >  '))],
      ),
      body: ListView(
        children: [
          ScreenFirst(
              myheight: myheight,
              mywidth: mywidth,
              heightPercent: heightPercent,
              widthPercent: widthPercent,
              isMobile: isMobile),
          Screen2About(
              myheight: myheight,
              mywidth: mywidth,
              heightPercent: heightPercent,
              widthPercent: widthPercent,
              isMobile: isMobile),
          Container(
            height: (myheight > mywidth) ? mywidth : myheight,
            width: (mywidth > myheight) ? myheight : mywidth,
            color: Colors.black54,
            child: ScreenThree(
                myheight: myheight,
                mywidth: mywidth,
                heightPercent: heightPercent,
                widthPercent: widthPercent,
                isMobile: isMobile),
          ),
        ],
      ),
    );
  }
}
