import 'package:flutter/material.dart';

import 'my_button.dart';
import 'my_constains.dart';

showMyDiolog(BuildContext context, String title) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: MyTextlabe(title),
          actions: [
            MyButton(
              title: 'CLOSE',
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      });
}
