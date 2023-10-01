import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../util/about_details.dart';
import '../util/about_me.dart';
import '../widgets/technologies.dart';
import '../widgets/text_heading.dart';
import '../widgets/text_heading2.dart';
import '../widgets/text_red.dart';

class Screen2About extends StatelessWidget {
  Screen2About(
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
      child: Column(
        //mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextHeading(myheight: myheight, mywidth: mywidth, text: ' About Me'),
          TextHeading2(
              myheight: myheight,
              mywidth: mywidth,
              text: ' get to Know Me  : )'),
          TextRed(myheight: myheight, mywidth: mywidth, text: 'Who am I ???? '),
          Expanded(
            child: Row(
              //  crossAxisAlignment: CrossAxisAlignment,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      AutoSizeText(
                        textAlign: TextAlign.center,
                        maxLines: 1,
                        maxFontSize: 35,
                        minFontSize: 10,
                        style: const TextStyle(
                            fontSize: 35,
                            color: Colors.blueAccent,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                  color: Color.fromARGB(255, 50, 59, 66),
                                  offset: Offset(1, 1),
                                  blurRadius: 2)
                            ]),
                        IAm,
                        // maxLines: 2,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
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
                          child: Container(
                            // padding: const EdgeInsets.all(4),
                            child: AutoSizeText(
                              IAmDetail,
                              minFontSize: 9,
                              maxFontSize: 20,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: (mywidth < myheight) ? 9 : 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                if ((mywidth > myheight))
                  SizedBox(
                    width: mywidth * 0.03,
                  ),
                if ((mywidth > myheight))
                  Image.asset('assets/images/agha-dev.png'),
                Expanded(
                  child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.asset((myheight > mywidth)
                          ? 'assets/images/agha-dev.png'
                          : 'assets/images/me_cropped_Colored.png')),
                ),
                AboutDetails(
                  widthPercent: widthPercent,
                  heightPercent: heightPercent,
                  myheight: myheight,
                  mywidth: mywidth,
                )
              ],
            ),
          ),
          TextRed(myheight: myheight, mywidth: mywidth, text: TechIworkedWith),
          MyTechnologies(
            myheight: myheight,
            mywidth: mywidth,
          ),
          SizedBox(
            height: myheight * 0.02,
          )
        ],
      ),
    );
  }
}
