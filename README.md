[![](https://img.shields.io/pub/v/responsive_bottom_bar)](https://pub.dev/packages/responsive_bottom_bar)
# responsive_bottom_bar

Flutter package to help you create your customized profile wheel.
There are many options available to customize the wheel. The following example only covers the
 required parameters. But it is possible to set all colors/shades etc.

![alt text](https://github.com/nietsmmar/responsive_bottom_bar/blob/main/lib/example.png "Example
 screenshot")
 
## Getting Started
Example:
```dart
Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text('Plugin example app'),
          ),
          body: Text("hello world: $currentIndex"),
          bottomNavigationBar: ResponsiveBottomBar(
              items: const [
                BottomBarItem(
                    title: "This is a very long title Yooo",
                    iconData: Icons.add_box),
                BottomBarItem(
                    title: "Wer sich",
                    iconData: Icons.share),
                BottomBarItem(
                    title: "jetzt noch",
                    iconData: Icons.star_rate),
                BottomBarItem(
                    title: "umdreht ist",
                    iconData: Icons.library_add),
                BottomBarItem(
                    title: "selber schuld :)",
                    iconData: Icons.pages_rounded),
              ],
              currentIndex: currentIndex,
              onTap: (int index) {
                setState(() {
                  currentIndex = index;
                });
              })),
    );
}
```
