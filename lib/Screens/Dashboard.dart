import 'package:betting_raja/Games/Game1.dart';
import 'package:betting_raja/Games/Game2.dart';
import 'package:betting_raja/Games/Game3.dart';
import 'package:betting_raja/Games/Game4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var height;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: Drawer(),
      body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
            color: Colors.white,
          ),
          child: DefaultTabController(
              length: 4,
              child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: Size.fromHeight(80.0),
                  child: AppBar(
                    backgroundColor: Colors.white,
                    centerTitle: true,
                    bottom: TabBar(
                      indicatorColor: Color(0xffFB1818),
                      labelColor: Color(0xffFB1818),
                      unselectedLabelColor: Colors.grey[800],
                      tabs: [
                        Tab(
                          icon: Icon(
                            MaterialCommunityIcons.tennis_ball,
                            size: 45,
                          ),
                          text: "CRICKET",
                        ),
                        Tab(
                          icon: FaIcon(
                            FontAwesomeIcons.futbol,
                            size: 40,
                          ),
                          text: "FOOTBALL",
                        ),
                        Tab(
                          icon: Icon(
                            MaterialCommunityIcons.basketball,
                            size: 45,
                          ),
                          text: "BASKETBALL",
                        ),
                        Tab(
                          icon: Icon(
                            MaterialCommunityIcons.baseball,
                            size: 45,
                          ),
                          text: "BASEBALL",
                        ),
                      ],
                    ),
                  ),
                ),
                body: TabBarView(
                  children: [
                    Game1(),
                    Game2(),
                    Game3(),
                    Game4(),
                  ],
                ),
              ))),
    );
  }
}
