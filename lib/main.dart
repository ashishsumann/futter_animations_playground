import 'package:animationplayground/shatterglass/shatter_glass.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Container(
        color: Colors.white,
        child: ShatterGlass(
          duration: Duration(seconds: 4),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              "https://c7.uihere.com/files/282/842/426/wallpaper-iphone-wallpapers-iphone-backgrounds-lock-screen-background.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
