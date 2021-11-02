import 'package:flutter/material.dart';
import 'package:responsive_bottom_bar/bottom_bar_item.dart';
import 'package:responsive_bottom_bar/internal_bottom_bar_item.dart';
import 'package:sizer/sizer.dart';

class ResponsiveBottomBar extends StatefulWidget {
  final Function onTap;
  final List<BottomBarItem> items;
  final int currentIndex;

  const ResponsiveBottomBar(
      {required this.onTap,
      Key? key,
      required this.items,
      required this.currentIndex})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => ResponsiveBottomBarState();
}

class ResponsiveBottomBarState extends State<ResponsiveBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (_, __, ___) {
      return Container(
        height:
            kBottomNavigationBarHeight + MediaQuery.of(context).padding.bottom,
        child: Row(
          children: [
            for (var i = 0; i < widget.items.length; i++)
              InternalBottomBarItem(
                  numItems: widget.items.length,
                  currIndex: widget.currentIndex,
                  index: i,
                  item: widget.items[i],
                  onTap: () {
                    widget.onTap(i);
                  })
          ],
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).focusColor,
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: const Offset(0, -2.0), // shadow direction: bottom right
            )
          ],
        ),
      );
    });
  }
}
