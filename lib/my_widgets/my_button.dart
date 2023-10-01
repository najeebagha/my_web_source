import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton(
      {Key? key,
      this.title,
      this.isLoading = false,
      this.isLoginButton = false,
      this.onPress})
      : super(key: key);

  String? title;
  bool? isLoginButton;
  VoidCallback? onPress;
  bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.blue,
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(1, 1))
          ],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color.fromARGB(255, 80, 80, 80)),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 202, 232, 247),
            Color.fromARGB(255, 74, 124, 189),
            Color.fromARGB(255, 242, 243, 243)
          ])),
      child: MaterialButton(
        onPressed: onPress,
        child: (isLoading == true)
            ? const CircularProgressIndicator()
            : Text(
                title ?? 'Button',
                style: const TextStyle(color: Colors.white),
              ),
      ),
    );
  }
}
