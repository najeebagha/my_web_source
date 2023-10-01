import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Text_About extends StatelessWidget {
  Text_About(
      {super.key,
      required this.myheight,
      required this.mywidth,
      required this.text});

  String? text;
  final double myheight;
  final double mywidth;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      maxLines: 1,
      maxFontSize: 20,
      minFontSize: 14,
      // style: TextStyle(fontSize: (myheight > mywidth) ? mywidth * 0.025 : 14),
      '$text',
      // maxLines: 2,
    );
  }
}

String IAm =
    'I am Najeeb Agha, Flutter developer Responsive and User Friendly Apps';

String TechIworkedWith = '  Technologies i Worked With ';
String IAmDetail =
    'I am a Epxert Flutter Developer with past experiance of android with kotlin ,  I have been developing mobile apps for over 4 years now. I have worked in many apps for various startups and got valuable learning experience. Been a former  Google Developer Student Clubs and many fourm where i Soveld problem of others , Currently i am working as FreeLancer Software Engineer at some Website as PartTime , currently i am learning dart_frog packeage for backend ';
