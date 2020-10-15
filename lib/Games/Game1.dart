import 'package:betting_raja/CriGamePage/CommonCricket.dart';
import 'package:flutter/material.dart';

class Game1 extends StatefulWidget {
  @override
  _Game1State createState() => _Game1State();
}

class _Game1State extends State<Game1> {
  List<String> teamsL = [
    "csk.png",
    "DC.png",
    "kkr.png",
    "panjab.png",
  ];
  List<String> teamsR = [
    "mumbai.png",
    "Rajsthan.png",
    "rcb.png",
    "srk.png",
  ];
  List<String> time = [
    "3h 9m 03s",
    "1d 2h 33m ",
    "2d 2h 05m ",
    "2d 9h 03m ",
  ];
  var height;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffececec),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Container(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Image.asset(
                    "assets/Group 13.png",
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    "Upcoming Matches",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[900],
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: height * 0.007,
                  ),
                  SingleChildScrollView(
                    child: Container(
                      height: height * 0.6,
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CommonCricket(
                                        teaml: "assets/teams/${teamsL[index]}",
                                        teamr: "assets/teams/${teamsR[index]}",
                                      ),
                                    ),
                                    (route) => false);
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Container(
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text("IPL T20 2020",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500)),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset(
                                            "assets/teams/${teamsL[index]}",
                                            height: 100,
                                          ),
                                          Text(
                                            "VS",
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Image.asset(
                                            "assets/teams/${teamsR[index]}",
                                            height: 100,
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15)),
                                            child: Container(
                                              child: Center(
                                                  child: Text(
                                                time[index],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              )),
                                              height: height * 0.03,
                                              width: height * 0.18,
                                              color: Color(0xffFB1818),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: teamsL.length,
                      ),
                    ),
                  )
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
