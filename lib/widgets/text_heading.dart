import 'package:flutter/material.dart';

class TextHeading extends StatelessWidget {
  TextHeading(
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
            fontSize: (myheight > mywidth) ? mywidth * 0.04 : 32,
            shadows: const [
              Shadow(color: Colors.blue, offset: Offset(1, 1), blurRadius: 2)
            ]));
  }
}
