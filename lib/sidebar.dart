import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';

import 'Widgets/sidebar_item.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _currentWidth = MediaQuery.of(context).size.width;
    var _extraScreenGrid = _currentWidth > 1536;
    var _largeScreenGrid = _currentWidth > 1366;
    var _smallScreenGrid = _currentWidth > 1201;
    var _extraSmallScreenGrid = _currentWidth > 1025;
    var _tabScreenGrid = _currentWidth > 769;
    var _mobileScreenGrid = _currentWidth > 481;

    return Container(
      width: _smallScreenGrid
          ? 300
          : _extraSmallScreenGrid
              ? 270
              : 0,
      color: Colors.indigo[600],
      child: ListView(
        children: [
          Container(
            height: 60,
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15, top: 08),
            child: Row(
              children: [
                Icon(
                  AntIcons.radar_chart,
                  size: 50,
                  color: Colors.white,
                ),
                Container(
                  padding: EdgeInsets.only(left: 05, top: 08),
                  child: Text(
                    "Workes",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SideBarItem(
            title: "Dashboard",
            iconData: AntIcons.dashboard,
            onTap: () {},
            isActive: true,
          ),
          SideBarItem(
            title: "Products",
            iconData: AntIcons.project_outline,
            onTap: () {},
          ),
          SideBarItem(
            title: "Total Orders",
            iconData: AntIcons.tag_outline,
            onTap: () {},
          ),
          SideBarItem(
            title: "Customers",
            iconData: AntIcons.profile_outline,
            onTap: () {},
          ),
          SideBarItem(
            title: "Notification",
            iconData: AntIcons.bell_outline,
            onTap: () {},
          ),
          SideBarItem(
            title: "Messages",
            iconData: AntIcons.mail_outline,
            onTap: () {},
          ),
          SideBarItem(
            title: "Sales",
            iconData: AntIcons.dollar,
            onTap: () {},
          ),
          SideBarItem(
            title: "Analytics",
            iconData: AntIcons.bar_chart,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
