import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:simple_2/new_screen.dart';
import 'dart:io' show Platform;
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    setPathUrlStrategy();
    runApp(
      const MyApp(),
    );
  }
  // if (Platform.isAndroid || kIsWeb) {
  //   runApp(const MyApp());
  // } else if (Platform.isWindows) {
  //   runApp(const MyApp());
  //   doWhenWindowReady(() {
  //     const initialSize = Size(360, 720);
  //     appWindow.minSize = initialSize;
  //     appWindow.size = initialSize;
  //     appWindow.alignment = Alignment.topRight;
  //     appWindow.show();
  //   });
  // }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // showSemanticsDebugger: true,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        useMaterial3: true,
      ),
      home:
          const Scaffold(backgroundColor: Colors.blueGrey, body: MyHomePage()),
      //  body: BottomTabMenu()),
    );
  }
}
