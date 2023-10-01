import 'package:flutter/material.dart';

class MyPic extends StatelessWidget {
  MyPic({
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
    return SizedBox(
      width: widthPercent * 50,
      height: heightPercent * 65,
      child: Image.asset('assets/images/agha.png'),
    );
  }
}
