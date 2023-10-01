import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SampleOfMyWork extends StatelessWidget {
  const SampleOfMyWork({
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
    return Container(
      width: double.infinity,
      height: (myheight > mywidth) ? 100 : 300,
      color: Colors.black,
      child: CarouselSlider(
          items: [
            ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Image.asset('assets/aghafolder/s1.jpg')),
            ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Image.asset('assets/aghafolder/s2.jpg')),
            ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Image.asset('assets/aghafolder/s3.jpg')),
            ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Image.asset('assets/aghafolder/s4.jpg')),
            ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Image.asset('assets/aghafolder/s5.jpg')),
            ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Image.asset('assets/aghafolder/s6.jpg')),
            ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Image.asset('assets/aghafolder/s7.jpg')),
            ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                child: Image.asset('assets/aghafolder/s8.jpg')),
          ],
          options: CarouselOptions(
              height: (myheight > mywidth) ? 100 : 300,
              autoPlay: true,
              viewportFraction: 0.7)),
    );
  }
}
