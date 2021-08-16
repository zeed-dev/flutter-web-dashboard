import 'package:ant_icons/ant_icons.dart';
import 'package:ant_icons/icon_data.dart';
import 'package:flutter/material.dart';

class SideBarItem extends StatelessWidget {
  final String title;
  final AntIconData iconData;
  final Function onTap;
  final bool isActive;

  const SideBarItem({
    Key key,
    this.title = "Title",
    this.iconData = AntIcons.warning,
    this.onTap,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isActive ? Colors.black12 : Colors.transparent,
      child: TextButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          padding: EdgeInsets.all(18),
        ),
        onPressed: () {
          if (onTap != null) {
            onTap();
          }
        },
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 15,
                top: 0,
                right: 0,
                bottom: 0,
              ),
              child: Icon(
                iconData,
                size: 23.0,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.0,
                top: 2,
                right: 10,
                bottom: 0,
              ),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
