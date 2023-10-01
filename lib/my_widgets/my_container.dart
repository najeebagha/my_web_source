import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  Widget? child;
  double heightS;
  double widthS;
  EdgeInsets? padding;
  Alignment? alignment;
  LinearGradient? gradient;
  Color? color;
  BorderRadius? borderRadius;

  MyContainer(
      {required this.heightS,
      required this.widthS,
      this.child,
      this.color,
      this.gradient,
      this.borderRadius,
      super.key,
      this.alignment,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: (padding != null) ? padding : const EdgeInsets.all(0),
      height: MediaQuery.of(context).size.height * 1 / 100 * heightS,
      child: Card(
        elevation: 5,
        child: Container(
            alignment: (alignment != null) ? alignment : Alignment.center,
            decoration: BoxDecoration(
              color: (color != null) ? color : null,
              borderRadius: (borderRadius == null)
                  ? BorderRadius.circular(12)
                  : borderRadius,
              boxShadow: const [
                BoxShadow(
                    color: Colors.black, offset: Offset(2, 2), blurRadius: 2)
              ],
            ),
            width: MediaQuery.of(context).size.width * 1 / 100 * widthS,
            height: MediaQuery.of(context).size.height * 1 / 100 * heightS,
            child: (child != null) ? child : const Text('Widget')),
      ),
    );
  }
}
