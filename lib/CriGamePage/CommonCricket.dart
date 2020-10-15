import 'package:betting_raja/CriGamePage/selectPlayer/WK.dart';
import 'package:betting_raja/Screens/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class CommonCricket extends StatefulWidget {
  String teaml;
  String teamr;

  CommonCricket({this.teaml, this.teamr});

  @override
  _CommonCricketState createState() => _CommonCricketState();
}

class _CommonCricketState extends State<CommonCricket> {
  var height;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    return Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: SizedBox(
              height: 50,
              child: RaisedButton(
                onPressed: () {},
                child: Text(
                  "SAVE TEAM",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Color(0xffFB1818),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xffFB1818),
          child: FaIcon(
            FontAwesomeIcons.eye,
            color: Colors.white,
            size: 35,
          ),
        ),
        appBar: AppBar(
          actions: [
            IconButton(
                icon: Icon(Icons.account_balance_wallet), onPressed: () {})
          ],
          title: SvgPicture.asset("assets/logo/blackandwhiteLOGO.svg"),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => bottomNav(),
                          ),
                          (route) => false);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                  /*SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Image.asset("assets/Group 12.png"),
                  )*/
                ],
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
                color: Color(0xffececec),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text("Maximum 7 player from each team",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          color: Color(0xffececec),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 7),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "Players",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          "11/11",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                    Image.asset(widget.teaml),
                                    Column(
                                      children: [
                                        Text(
                                          "CSK",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          "6",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "MI",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          "5",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                    Image.asset(widget.teamr),
                                    Column(
                                      children: [
                                        Text(
                                          "Credit left",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(
                                          "0",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: height * 0.05,
                              ),
                              Container(
                                height: height,
                                child: DefaultTabController(
                                  length: 4,
                                  child: Scaffold(
                                    backgroundColor: Colors.white,
                                    appBar: AppBar(
                                      elevation: 0.0,
                                      backgroundColor: Color(0xffececec),
                                      title: TabBar(
                                        indicator: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        tabs: [
                                          Tab(
                                            child: Text(
                                              "WK \n(0)",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 17),
                                            ),
                                          ),
                                          Tab(
                                            child: Text(
                                              "BAT \n(0)",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16),
                                            ),
                                          ),
                                          Tab(
                                            child: Text(
                                              "AR \n(0)",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 17),
                                            ),
                                          ),
                                          Tab(
                                            child: Text(
                                              "BOWL (0)",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 17),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    body: TabBarView(
                                      children: [
                                        Wk(),
                                        Center(child: Text("2")),
                                        Center(child: Text("3")),
                                        Center(child: Text("4")),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ));
  }
}
