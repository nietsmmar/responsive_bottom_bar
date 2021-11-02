import 'package:flutter/material.dart';
import 'package:responsive_bottom_bar/bottom_bar_item.dart';
import 'package:responsive_bottom_bar/responsive_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text('Plugin example app'),
          ),
          body: Text("hello world: $currentIndex"),
          bottomNavigationBar: ResponsiveBottomBar(
              items: [
                BottomBarItem(
                    title: "This is a very long title Yooo",
                    iconData: Icons.add_box,
                    currentIndex: currentIndex),
                BottomBarItem(
                    title: "Wer sich",
                    iconData: Icons.share,
                    currentIndex: currentIndex),
                BottomBarItem(
                    title: "jetzt noch",
                    iconData: Icons.star_rate,
                    currentIndex: currentIndex),
                BottomBarItem(
                    title: "umdreht ist",
                    iconData: Icons.library_add,
                    currentIndex: currentIndex),
                BottomBarItem(
                    title: "selber schuld :)",
                    iconData: Icons.pages_rounded,
                    currentIndex: currentIndex),
              ],
              onTap: (int index) {
                setState(() {
                  currentIndex = index;
                });
              })),
    );
  }
}
