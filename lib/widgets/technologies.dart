import 'package:flutter/material.dart';

class MyTechnologies extends StatelessWidget {
  const MyTechnologies({
    super.key,
    required this.myheight,
    required this.mywidth,
  });

  final double myheight;
  final double mywidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            const Icon(
              Icons.play_arrow,
              color: Colors.red,
            ),
            Text('  Flutter ',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: (myheight > mywidth) ? mywidth * 0.025 : 14,
                    shadows: const [
                      Shadow(
                          color: Colors.black,
                          offset: Offset(1, 1),
                          blurRadius: 1)
                    ])),
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.play_arrow,
              color: Colors.red,
            ),
            Text('  Dart ',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: (myheight > mywidth) ? mywidth * 0.025 : 14,
                    shadows: const [
                      Shadow(
                          color: Colors.black,
                          offset: Offset(1, 1),
                          blurRadius: 1)
                    ])),
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.play_arrow,
              color: Colors.red,
            ),
            Text('  Kotlin ',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: (myheight > mywidth) ? mywidth * 0.025 : 14,
                    shadows: const [
                      Shadow(
                          color: Colors.black,
                          offset: Offset(1, 1),
                          blurRadius: 1)
                    ])),
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.play_arrow,
              color: Colors.red,
            ),
            Text('  Java ',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: (myheight > mywidth) ? mywidth * 0.025 : 14,
                    shadows: const [
                      Shadow(
                          color: Colors.black,
                          offset: Offset(1, 1),
                          blurRadius: 1)
                    ])),
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.play_arrow,
              color: Colors.red,
            ),
            Text('  Designing ',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: (myheight > mywidth) ? mywidth * 0.025 : 14,
                    shadows: const [
                      Shadow(
                          color: Colors.black,
                          offset: Offset(1, 1),
                          blurRadius: 1)
                    ])),
          ],
        )
      ],
    );
  }
}
