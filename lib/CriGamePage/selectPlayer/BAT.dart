import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BAT extends StatefulWidget {
  List<List<List<String>>> players;
  List<List<String>> Names;
  BAT({this.players,this.Names});
  @override
  _BATState createState() => _BATState();
}

class _BATState extends State<BAT> {
  List<String> teams = ["CSK", "MI", "CSK", "MI", "CSK","CSK","CSK", "MI", "MI", "CSK"];
  List<String> points = ["277", "260", "255","277", "260", "255","277", "260", "255","277", "260", "255"];
  List<String> credits = ["10", "10", "9.5","10", "10", "9.5","10", "10", "9.5","10", "10", "9.5"];
  var height;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
      //  height: height*0.55,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Pick Batsman",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
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
                              color: Colors.grey[600],
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
                          color: Colors.grey[600],
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
                          color:Colors.grey[600],
                          fontWeight: FontWeight.w700,
                          fontSize: 13),
                    ),
                  ),
                  Text(""),
                ]),
              ],
            ),
            Container(
              height: height*0.35,
              child: ListView.builder(
                itemCount: widget.players[0][1].length,
                itemBuilder: (context, index) {
                  return Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
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
                          "assets/players/CSK vs MI/${widget.players[0][1][index]}",
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
                                    widget.Names[1][index],
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
              ),

            ),

          ],
        ),
      ),
    );
  }
}
