import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_bottom_bar/bottom_bar_item.dart';
import 'package:sizer/sizer.dart';

class InternalBottomBarItem extends StatelessWidget {
  final Function onTap;
  final int currIndex;
  final int numItems;
  final BottomBarItem item;
  final int index;

  const InternalBottomBarItem(
      {Key? key, required this.index, required this.currIndex, required this.numItems, required this.onTap, required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          onTap();
        },
        child: Container(
            width: (100 / numItems).w,
            padding: EdgeInsets.only(top: 1.w, bottom: 1.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: (100 / numItems).w,
                    height: kBottomNavigationBarHeight / 2 - 1.w,
                    child: Icon(
                      item.iconData,
                      size: 5.w,
                      color: currIndex == index ? Theme.of(context).primaryColor : Theme.of(context).textTheme.caption!.color,
                    )),
                SizedBox(
                    width: (100 / numItems).w - 2.w, // -2.w to have left/right padding
                    height: kBottomNavigationBarHeight / 2 - 1.w,
                    child: Container(
                        alignment: Alignment.center,
                        child: AutoSizeText(
                          item.title,
                          maxLines: 2,
                          wrapWords: false,
                          minFontSize: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: currIndex == index ? Theme.of(context).primaryColor : Theme.of(context).textTheme.caption!.color,
                          ),
                        )))
              ],
            )));
  }
}
