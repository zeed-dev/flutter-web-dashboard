import 'package:ant_icons/ant_icons.dart';

import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/sidebar.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Topbar extends StatelessWidget {
  const Topbar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _currentWidth = MediaQuery.of(context).size.width;
    var _largeScreenGrid = _currentWidth > 1366;
    var _smallScreenGrid = _currentWidth > 1201;
    var _extraSmallScreenGrid = _currentWidth > 1025;
    var _tabScreenGrid = _currentWidth > 769;

    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: _extraSmallScreenGrid
                      ? Container()
                      : Container(
                          child: InkWell(
                            onTap: () {
                              showMaterialModalBottomSheet(
                                expand: true,
                                enableDrag: false,
                                isDismissible: false,
                                barrierColor: Colors.transparent,
                                backgroundColor: Colors.transparent,
                                context: context,
                                builder: (context) => GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop(false);
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 280,
                                        child: SideBar(),
                                      ),
                                      Expanded(
                                        child: Container(
                                          color: Colors.transparent,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                            child: Icon(AntIcons.menu),
                          ),
                        ),
                ),
                _tabScreenGrid
                    ? Container(
                        height: 40,
                        width: _largeScreenGrid
                            ? 500
                            : _smallScreenGrid
                                ? 500
                                : 400,
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: Padding(
                              padding: EdgeInsets.only(
                                right: 10,
                                bottom: 2,
                              ),
                              child: Icon(
                                FeatherIcons.search,
                                color: Colors.blue,
                              ),
                            ),
                            filled: true,
                            fillColor: Color(0xffEEEEEE),
                            contentPadding:
                                EdgeInsets.only(left: 25, right: 30),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Search here ...",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black87,
                          ),
                        ),
                      )
                    : Container(
                        padding: EdgeInsets.only(left: 5, top: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              AntIcons.radar_chart,
                              size: 45,
                              color: Colors.blue,
                            ),
                            Text(
                              "Workss",
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.blue,
                              ),
                            )
                          ],
                        ),
                      ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(right: 10),
                child: Tooltip(
                  message: "Notifications",
                  child: Container(
                    child: Stack(
                      children: [
                        Icon(
                          AntIcons.bell_outline,
                          size: 28,
                          color: Colors.black87,
                        ),
                        Positioned(
                          right: 4,
                          top: 3,
                          child: Stack(
                            children: [
                              Icon(
                                Icons.brightness_1,
                                size: 8,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                child: Tooltip(
                  message: "Chats",
                  child: Container(
                    child: Icon(
                      AntIcons.message_outline,
                      size: 28,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 10),
                child: Tooltip(
                  message: "Profile",
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 2),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          "https://media-exp1.licdn.com/dms/image/C5603AQEjacoM1zl9Qg/profile-displayphoto-shrink_800_800/0/1629063920340?e=1634774400&v=beta&t=6-qTBLbjdxURDLsXGxMLetLJIJsNS1Yo5KXihEBo1BA",
                          width: 32,
                          height: 32,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              _popUpMenu(),
            ],
          )
        ],
      ),
    );
  }

  Widget _popUpMenu() {
    return PopupMenuButton<int>(
      padding: EdgeInsets.all(0),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Container(
            width: 130,
            height: 50,
            child: Row(
              children: [
                Icon(
                  AntIcons.shop_outline,
                  color: Colors.black,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5, top: 0.5),
                  child: Text("My Store"),
                )
              ],
            ),
          ),
        ),
        PopupMenuItem(
          value: 1,
          child: Container(
            width: 130,
            height: 50,
            child: Row(
              children: [
                Icon(
                  AntIcons.wallet_outline,
                  color: Colors.black,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5, top: 0.5),
                  child: Text("Wallet"),
                )
              ],
            ),
          ),
        ),
        PopupMenuItem(
          value: 1,
          child: Container(
            width: 130,
            height: 50,
            child: Row(
              children: [
                Icon(
                  AntIcons.share_alt,
                  color: Colors.black,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5, top: 0.5),
                  child: Text("Share"),
                )
              ],
            ),
          ),
        ),
        PopupMenuItem(
          value: 1,
          child: Container(
            width: 130,
            height: 50,
            child: Row(
              children: [
                Icon(
                  AntIcons.logout_outline,
                  color: Colors.black,
                ),
                Container(
                  padding: EdgeInsets.only(left: 5, top: 0.5),
                  child: Text("Log out"),
                )
              ],
            ),
          ),
        ),
      ],
      child: Padding(
        padding: EdgeInsets.only(top: 3),
        child: Icon(
          Icons.more_vert_outlined,
          color: Colors.black,
          size: 29,
        ),
      ),
    );
  }
}
