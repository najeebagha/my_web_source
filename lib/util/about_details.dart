import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AboutDetails extends StatelessWidget {
  const AboutDetails({
    super.key,
    required this.myheight,
    required this.mywidth,
    required this.heightPercent,
    required this.widthPercent,
  });

  final double myheight;
  final double mywidth;
  final double heightPercent;
  final double widthPercent;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: (myheight > mywidth) ? 20 : 40,
        ),
        Row(
          children: [
            AutoSizeText(
              'Name',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                  fontSize: (myheight > mywidth) ? 6 : 15),
            ),
            SizedBox(
              width: mywidth * 0.02,
            ),
            AutoSizeText(
              'Najeeb Agha',
              style: TextStyle(fontSize: (myheight > mywidth) ? 6 : 15),
            )
          ],
        ),
        Row(
          children: [
            AutoSizeText(
              'Email',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                  fontSize: (myheight > mywidth) ? 6 : 15),
            ),
            SizedBox(
              width: mywidth * 0.02,
            ),
            AutoSizeText(
              'Noormoh3@gmail.com',
              style: TextStyle(fontSize: (myheight > mywidth) ? 6 : 15),
            )
          ],
        ),
        Row(
          children: [
            AutoSizeText(
              'Age',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                  fontSize: (myheight > mywidth) ? 6 : 15),
            ),
            SizedBox(
              width: mywidth * 0.02,
            ),
            AutoSizeText(
              '   31',
              style: TextStyle(fontSize: (myheight > mywidth) ? 6 : 15),
            )
          ],
        ),
        Row(
          children: [
            AutoSizeText(
              'Address',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                  fontSize: (myheight > mywidth) ? 6 : 15),
            ),
            SizedBox(
              width: mywidth * 0.02,
            ),
            AutoSizeText(
              ' Quetta Balochistan',
              style: TextStyle(fontSize: (myheight > mywidth) ? 6 : 15),
            ),
          ],
        ),
        Row(
          children: [
            AutoSizeText(
              'Phone',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                  fontSize: (myheight > mywidth) ? 6 : 15),
            ),
            SizedBox(
              width: mywidth * 0.02,
            ),
            AutoSizeText(
              '    03023900182',
              style: TextStyle(fontSize: (myheight > mywidth) ? 6 : 15),
            ),
          ],
        ),
      ]),
    );
  }
}
