import 'package:simple_2/my_widgets/my_container.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MyTextlabe extends StatelessWidget {
  MyTextlabe(this.text, {super.key, this.fontSize, this.color});

  String? text;
  double? fontSize;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: TextAlign.start,
      style: TextStyle(
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
          color: (color == null) ? Colors.black : color,
          fontSize: (fontSize == null) ? 15 : fontSize),
    );
  }
}

LinearGradient myLinearGradient = const LinearGradient(
    colors: [Color.fromARGB(255, 170, 213, 245), Colors.white]);
CarouselSlider myCarouselSlider(List<String> image) {
  List<Widget> imagees = image.map(
    (imageUrl) {
      return MyContainer(
        padding: const EdgeInsets.symmetric(horizontal: 1),
        heightS: 20,
        widthS: 26,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            placeholder: (c, i) => const Center(child: Text('Image Loading')),
            width: double.infinity,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
      );
    },
  ).toList();
  return CarouselSlider(
      items: [...imagees],
      options:
          CarouselOptions(height: 100, autoPlay: true, viewportFraction: 0.5));
}

List<Widget> get catagoriesList {
  return [
    const Column(
      children: [Icon(Icons.phone_android_sharp), Text('Devices')],
    ),
    const Column(
      children: [Icon(Icons.cell_tower_sharp), Text('Cells')],
    ),
    const Column(
      children: [Icon(Icons.local_drink), Text('Drinks')],
    ),
    const Column(
      children: [Icon(Icons.bolt_rounded), Text('Electronics')],
    ),
    const Column(
      children: [Icon(Icons.watch), Text('Watches')],
    ),
  ];
}
