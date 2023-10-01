import 'package:flutter/material.dart';

class TextHeading2 extends StatelessWidget {
  TextHeading2(
      {super.key,
      required this.myheight,
      required this.mywidth,
      required this.text});

  String? text;
  final double myheight;
  final double mywidth;

  @override
  Widget build(BuildContext context) {
    return Text(' $text',
        style: TextStyle(
            fontSize: (myheight > mywidth) ? mywidth * 0.03 : 20,
            shadows: const [
              Shadow(color: Colors.blue, offset: Offset(1, 1), blurRadius: 2)
            ]));
  }
}
