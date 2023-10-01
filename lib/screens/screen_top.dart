import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../widgets/kind_apps.dart';
import '../widgets/my_pic.dart';

class ScreenFirst extends StatelessWidget {
  ScreenFirst(
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
      height: (myheight > mywidth) ? mywidth : (myheight / 1.3),
      width: (mywidth > myheight) ? myheight : mywidth,
      color: Colors.black,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: myheight * 0.05,
                ),
                Text('   WellCome to My Website ',
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: (myheight > mywidth) ? mywidth * 0.04 : 27,
                        shadows: const [
                          Shadow(
                              color: Colors.blue,
                              offset: Offset(1, 1),
                              blurRadius: 2)
                        ])),
                Text('  Najeeb ',
                    style: TextStyle(
                        fontSize: (myheight > mywidth) ? mywidth * 0.09 : 62,
                        shadows: const [
                          Shadow(
                              color: Colors.blue,
                              offset: Offset(1, 1),
                              blurRadius: 2)
                        ])),
                Text('  Agha ',
                    style: TextStyle(
                        fontSize: (myheight > mywidth) ? mywidth * 0.09 : 62,
                        shadows: const [
                          Shadow(
                              color: Colors.blue,
                              offset: Offset(1, 1),
                              blurRadius: 2)
                        ])),
                Text('   Flutter Develper ',
                    style: TextStyle(
                        fontSize: (myheight > mywidth) ? mywidth * 0.06 : 40,
                        shadows: const [
                          Shadow(
                              color: Colors.blue,
                              offset: Offset(1, 1),
                              blurRadius: 2)
                        ])),
                KindApps(
                  mywidth: mywidth,
                  myheight: myheight,
                  heightPercent: heightPercent,
                  widthPercent: widthPercent,
                ),
                AutoSizeText(
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  maxFontSize: 20,
                  minFontSize: 04,
                  style: TextStyle(
                      fontSize: (myheight > mywidth) ? 10 : 30,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      shadows: const [
                        Shadow(
                            color: Color.fromARGB(255, 50, 59, 66),
                            offset: Offset(1, 1),
                            blurRadius: 2)
                      ]),
                  '    50+ Flutter Projects , 30+ Customers ',
                  // maxLines: 2,
                ),
                const Spacer(
                  flex: 1,
                )
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topRight,
                child: MyPic(
                  mywidth: mywidth,
                  myheight: myheight,
                  heightPercent: heightPercent,
                  widthPercent: widthPercent,
                ),
              ),
            ),
          ]),
    );
  }
}
