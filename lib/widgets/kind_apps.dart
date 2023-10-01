import 'package:flutter/material.dart';

class KindApps extends StatelessWidget {
  KindApps({
    super.key,
    required this.mywidth,
    required this.myheight,
    required this.heightPercent,
    required this.widthPercent,
  });

  final double mywidth;
  final double myheight;
  double heightPercent;
  double widthPercent;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: mywidth * 0.05,
        ),
        SizedBox(
            width: myheight / 25, child: Image.asset('assets/images/ios.png')),
        SizedBox(
          width: mywidth * 0.02,
        ),
        SizedBox(
          width: myheight / 25,
          child: Image.asset(
            //  scale: mywidth * 0.02,
            'assets/images/android1.png',
          ),
        ),
        SizedBox(
          width: mywidth * 0.02,
        ),
        SizedBox(
            width: myheight / 25,
            child: Image.asset('assets/images/windows.png')),
        SizedBox(
          width: mywidth * 0.02,
        ),
        SizedBox(
            width: myheight / 25,
            child: Image.asset(
              'assets/images/web.png',
            )),
      ],
    );
  }
}
