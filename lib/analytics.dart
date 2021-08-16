import 'package:flutter/material.dart';
import 'package:ant_icons/ant_icons.dart';
import 'package:flutter_web_dashboard/Widgets/reviews_tile.dart';
import 'package:flutter_web_dashboard/chart.dart';
import 'package:flutter_web_dashboard/line_chart.dart';
import 'package:flutter_web_dashboard/top_bar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:rating_bar/rating_bar.dart';

class Analytics extends StatelessWidget {
  const Analytics({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _currentWidthGrid = MediaQuery.of(context).size.width;
    var _extraLargeScreenGrid = _currentWidthGrid > 1536;
    var _largeScreenGrid = _currentWidthGrid > 1366;
    var _smallScreenGrid = _currentWidthGrid > 1201;
    var _tabScreenGrid = _currentWidthGrid > 769;

    return Container(
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                // NOTE: Information Card
                Container(
                  margin: EdgeInsets.only(
                    left: 25,
                    top: 90,
                    right: 25,
                    bottom: 12,
                  ),
                  color: Colors.black12.withOpacity(0.03),
                  child: GridView.count(
                    crossAxisCount: _extraLargeScreenGrid
                        ? 4
                        : _tabScreenGrid
                            ? 2
                            : 1,
                    childAspectRatio: 3.5,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    padding: EdgeInsets.all(02.0),
                    shrinkWrap: true,
                    children: [
                      Container(
                        child: Material(
                          elevation: 02.0,
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            color: Colors.blue[300],
                            height: 120,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              "Revenue",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              "\$1000k",
                                              style: TextStyle(
                                                fontSize: 40,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  height: 120,
                                  child: Icon(
                                    AntIcons.dollar,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Material(
                          elevation: 02.0,
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            color: Colors.red[300],
                            height: 120,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              "Total Orders",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              "1230",
                                              style: TextStyle(
                                                fontSize: 40,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  height: 120,
                                  child: Icon(
                                    FeatherIcons.tag,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Material(
                          elevation: 02.0,
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            color: Colors.orange[300],
                            height: 120,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              "Messages",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              "608",
                                              style: TextStyle(
                                                fontSize: 40,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  height: 120,
                                  child: Icon(
                                    Ionicons.mail_open,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Material(
                          elevation: 02.0,
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            color: Colors.indigo[300],
                            height: 120,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              "Customer",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.only(left: 15),
                                            child: Text(
                                              "\2700K",
                                              style: TextStyle(
                                                fontSize: 40,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 120,
                                  height: 120,
                                  child: Icon(
                                    Ionicons.people_outline,
                                    size: 50,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // NOTE: Carts
                Container(
                  margin: EdgeInsets.only(
                    left: 25,
                    top: 12.5,
                    right: 25,
                    bottom: 20,
                  ),
                  child: GridView.count(
                    crossAxisCount: _largeScreenGrid ? 2 : 1,
                    childAspectRatio: 1.8,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    padding: EdgeInsets.all(02),
                    shrinkWrap: true,
                    children: [
                      Container(
                        child: Material(
                          elevation: 2,
                          child: Container(
                            padding: EdgeInsets.all(25),
                            child: Center(
                              child: LineChartSample2(),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Material(
                          elevation: 2,
                          child: Container(
                            padding: EdgeInsets.all(25),
                            child: Center(
                              child: PieChartSample2(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // NOTE: Table
                Container(
                  margin: EdgeInsets.only(
                    left: 25,
                    top: 12.5,
                    right: 25,
                    bottom: 20,
                  ),
                  child: GridView.count(
                    crossAxisCount: _extraLargeScreenGrid
                        ? 3
                        : _smallScreenGrid
                            ? 2
                            : 1,
                    childAspectRatio: 1,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    padding: EdgeInsets.all(02),
                    semanticChildCount: 2,
                    shrinkWrap: true,
                    children: [
                      // NOTE: Chat
                      Container(
                        child: Material(
                          elevation: 02,
                          borderRadius: BorderRadius.circular(12),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            left: 15,
                                            top: 15,
                                            bottom: 5,
                                          ),
                                          child: Text(
                                            "Most Recet Chats",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Divider(),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 10, top: 10),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                child: Image.network(
                                                  "https://cdn.pixabay.com/photo/2017/11/02/14/26/model-2911330_960_720.jpg",
                                                  width: 40,
                                                  height: 40,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      left: 05, top: 0),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                  child: Text("Ziad Alfian"),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      left: 05, top: 0),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                  child: Text(
                                                    "We are loking for buying",
                                                    style: TextStyle(
                                                      color: Colors.black45,
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 0.3,
                                        color: Colors.black12.withOpacity(0.2),
                                        alignment: Alignment.topRight,
                                        margin: EdgeInsets.only(left: 60),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 10, top: 10),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                child: Image.network(
                                                  "https://cdn.pixabay.com/photo/2017/11/02/14/26/model-2911330_960_720.jpg",
                                                  width: 40,
                                                  height: 40,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      left: 05, top: 0),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                  child: Text("Ziad Alfian"),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      left: 05, top: 0),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                  child: Text(
                                                    "We are loking for buying",
                                                    style: TextStyle(
                                                      color: Colors.black45,
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 0.3,
                                        color: Colors.black12.withOpacity(0.2),
                                        alignment: Alignment.topRight,
                                        margin: EdgeInsets.only(left: 60),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 10, top: 10),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                child: Image.network(
                                                  "https://cdn.pixabay.com/photo/2017/11/02/14/26/model-2911330_960_720.jpg",
                                                  width: 40,
                                                  height: 40,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      left: 05, top: 0),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                  child: Text("Ziad Alfian"),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      left: 05, top: 0),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                  child: Text(
                                                    "We are loking for buying",
                                                    style: TextStyle(
                                                      color: Colors.black45,
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 0.3,
                                        color: Colors.black12.withOpacity(0.2),
                                        alignment: Alignment.topRight,
                                        margin: EdgeInsets.only(left: 60),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 10, top: 10),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                child: Image.network(
                                                  "https://cdn.pixabay.com/photo/2017/11/02/14/26/model-2911330_960_720.jpg",
                                                  width: 40,
                                                  height: 40,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      left: 05, top: 0),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                  child: Text("Ziad Alfian"),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      left: 05, top: 0),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                  child: Text(
                                                    "We are loking for buying",
                                                    style: TextStyle(
                                                      color: Colors.black45,
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 0.3,
                                        color: Colors.black12.withOpacity(0.2),
                                        alignment: Alignment.topRight,
                                        margin: EdgeInsets.only(left: 60),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 10, top: 10),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                child: Image.network(
                                                  "https://cdn.pixabay.com/photo/2017/11/02/14/26/model-2911330_960_720.jpg",
                                                  width: 40,
                                                  height: 40,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      left: 05, top: 0),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                  child: Text("Ziad Alfian"),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      left: 05, top: 0),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                  child: Text(
                                                    "We are loking for buying",
                                                    style: TextStyle(
                                                      color: Colors.black45,
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 0.3,
                                        color: Colors.black12.withOpacity(0.2),
                                        alignment: Alignment.topRight,
                                        margin: EdgeInsets.only(left: 60),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 10, top: 10),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                child: Image.network(
                                                  "https://cdn.pixabay.com/photo/2017/11/02/14/26/model-2911330_960_720.jpg",
                                                  width: 40,
                                                  height: 40,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      left: 05, top: 0),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                  child: Text("Ziad Alfian"),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      left: 05, top: 0),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                  child: Text(
                                                    "We are loking for buying",
                                                    style: TextStyle(
                                                      color: Colors.black45,
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 0.3,
                                        color: Colors.black12.withOpacity(0.2),
                                        alignment: Alignment.topRight,
                                        margin: EdgeInsets.only(left: 60),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 10, top: 10),
                                        child: Row(
                                          children: [
                                            Container(
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                child: Image.network(
                                                  "https://cdn.pixabay.com/photo/2017/11/02/14/26/model-2911330_960_720.jpg",
                                                  width: 40,
                                                  height: 40,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      left: 05, top: 0),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                  child: Text("Ziad Alfian"),
                                                ),
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      left: 05, top: 0),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      5,
                                                  child: Text(
                                                    "We are loking for buying",
                                                    style: TextStyle(
                                                      color: Colors.black45,
                                                      fontSize: 13,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 0.3,
                                        color: Colors.black12.withOpacity(0.2),
                                        alignment: Alignment.topRight,
                                        margin: EdgeInsets.only(left: 60),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // NOTE: Reviews
                      Container(
                        child: Material(
                          elevation: 02,
                          borderRadius: BorderRadius.circular(12),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    padding: EdgeInsets.only(
                                      left: 15,
                                      top: 15,
                                      bottom: 5,
                                    ),
                                    child: Text(
                                      "Reviews",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Divider(),
                                ReviewsTile(),
                                ReviewsTile(),
                                ReviewsTile(),
                                ReviewsTile(),
                                ReviewsTile(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // NOTE: Views Analytics
                      Container(
                        child: Material(
                          elevation: 02,
                          borderRadius: BorderRadius.circular(12),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  padding: EdgeInsets.only(
                                    left: 15,
                                    top: 15,
                                    bottom: 5,
                                  ),
                                  child: Text(
                                    "Views Analytics",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                              Divider(),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(
                                    left: 20,
                                    top: 10,
                                    right: 20,
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black12
                                                  .withOpacity(0.05),
                                              width: 01.5,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                child: Text(
                                                  "Total Views",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  "2900K",
                                                  style: TextStyle(
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.purple,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black12
                                                  .withOpacity(0.05),
                                              width: 01.5,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                child: Text(
                                                  "Unique Views",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  "200K",
                                                  style: TextStyle(
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(
                                    left: 20,
                                    top: 10,
                                    right: 20,
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black12
                                                  .withOpacity(0.05),
                                              width: 01.5,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                child: Text(
                                                  "Weekly Views",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  "6500k",
                                                  style: TextStyle(
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.indigo,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black12
                                                  .withOpacity(0.05),
                                              width: 01.5,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                child: Text(
                                                  "Monthly Views",
                                                  style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  "200K",
                                                  style: TextStyle(
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.pink,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // NOTE: App Bar
          Container(
            height: 65,
            color: Colors.white,
            // width: MediaQuery.of(context).size.width,
            child: Material(
              elevation: 2,
              child: Topbar(),
            ),
          )
        ],
      ),
    );
  }
}
