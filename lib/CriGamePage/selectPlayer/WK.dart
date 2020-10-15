import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Wk extends StatefulWidget {
  @override
  _WkState createState() => _WkState();
}

class _WkState extends State<Wk> {
  List<String> credits = ["10", "10", "9.5"];
  List<String> points = ["277", "260", "255"];
  List<String> playername = ["MS Dhoni", "Rohit Sharma", "Shane Watson"];
  List<String> teams = ["CSK", "MI", "CSK"];
  List<String> players = ["dhoni.png", "watson.png", "rohit.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pick 1-4 Wicket Keeper",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                IconButton(
                    icon: FaIcon(
                      FontAwesomeIcons.car,
                      color: Colors.black,
                    ),
                    onPressed: () {})
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Table(
              border: TableBorder(
                  horizontalInside: BorderSide(
                      width: 3, color: Colors.blue, style: BorderStyle.solid)),
              columnWidths: {
                0: FixedColumnWidth(60),
                //   0: FixedColumnWidth(45),
                1: FixedColumnWidth(130),
                //   2: FixedColumnWidth(70),
                //   3: FixedColumnWidth(70),
                4: FixedColumnWidth(40),
              },
              children: [
                TableRow(children: [
                  Text(""),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "WICKET KEEPER",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "POINTS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "CREDITS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                  Text(""),
                ]),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: playername.length,
              itemBuilder: (context, index) {
                return Table(
                  border: TableBorder(
                    top: BorderSide(color: Colors.grey, width: 1),
                  ),
                  columnWidths: {
                    0: FixedColumnWidth(60),
                    1: FixedColumnWidth(130),
                    // 2: FixedColumnWidth(70),
                    // 3: FixedColumnWidth(70),
                    4: FixedColumnWidth(40),
                  },
                  children: [
                    TableRow(children: [
                      Image.asset(
                        "assets/players/CSK/${players[index]}",
                        height: 70,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  playername[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14),
                                ),
                                Text(
                                  teams[index],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 9),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          points[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w700,
                              fontSize: 13),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          credits[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 13),
                        ),
                      ),
                      IconButton(
                          icon: Icon(CupertinoIcons.add_circled),
                          onPressed: () {})
                    ]),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
