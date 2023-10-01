import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class WhatCanIDo extends StatelessWidget {
  const WhatCanIDo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.black,
      child: CarouselSlider(
          items: [
            SizedBox(
              // color: Colors.blueGrey,
              width: 120,
              height: 90,
              child: Column(
                children: [
                  Expanded(
                    child:
                        Image.asset(fit: BoxFit.cover, 'assets/images/ios.png'),
                  ),
                  const AutoSizeText(
                      style: TextStyle(color: Colors.red), 'IOS Apps')
                ],
              ),
            ),
            SizedBox(
              // color: Colors.blueGrey,
              width: 120,
              height: 90,
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                        fit: BoxFit.cover, 'assets/images/android.png'),
                  ),
                  const AutoSizeText(
                      style: TextStyle(color: Colors.red), 'Android Apps')
                ],
              ),
            ),
            SizedBox(
              // color: Colors.blueGrey,
              width: 120,
              height: 90,
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                        fit: BoxFit.cover, 'assets/images/windows.png'),
                  ),
                  const AutoSizeText(
                      style: TextStyle(color: Colors.red), 'Windows Apps')
                ],
              ),
            ),
            SizedBox(
              // color: Colors.blueGrey,
              width: 120,
              height: 90,
              child: Column(
                children: [
                  Expanded(
                    child:
                        Image.asset(fit: BoxFit.cover, 'assets/images/web.png'),
                  ),
                  const AutoSizeText(
                      style: TextStyle(color: Colors.red), 'WebSite & apps')
                ],
              ),
            ),
            SizedBox(
              // color: Colors.blueGrey,
              width: 120,
              height: 90,
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                        fit: BoxFit.cover, 'assets/images/ustad.png'),
                  ),
                  const AutoSizeText(
                      style: TextStyle(color: Colors.red), 'OS Expert')
                ],
              ),
            ),
            SizedBox(
              // color: Colors.blueGrey,
              width: 120,
              height: 90,
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                        fit: BoxFit.cover, 'assets/images/uiux.png'),
                  ),
                  const AutoSizeText(
                      style: TextStyle(color: Colors.red), 'UI/UX Designing')
                ],
              ),
            ),
          ],
          options: CarouselOptions(
              height: 100,
              autoPlay: true,
              viewportFraction: 0.3,
              reverse: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 500))),
    );
  }
}
