import 'package:betting_raja/Screens/SignIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottomNav.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var height;
  var width;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: height < 600
          ? Container(
              child: Stack(children: [
                Image.asset(
                  "assets/screen.png",
                  fit: BoxFit.cover,
                  height: height,
                  width: width,
                ),
                Positioned(
                    top: height * 0.2,
                    left: width * 0.28,
                    child: Image.asset(
                      "assets/logo.png",
                      height: height * 0.3,
                    )),
                Positioned(
                  bottom: height * 0.05,
                  left: width * 0.05,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "WELCOME",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 40),
                      ),
                      Text(
                        "Best app for Betting",
                        style: TextStyle(color: Colors.black54, fontSize: 17),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          height: height * 0.065,
                          width: width * 0.9,
                          child: RaisedButton(
                            color: Color(0xffFB1818),
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => bottomNav(),
                                  ),
                                  (route) => false);
                            },
                            child: Text(
                              "GET STARTED",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          height: height * 0.065,
                          width: width * 0.9,
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignIN(),
                                  ));
                            },
                            child: Text(
                              "ALREADY ACCOUNT",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                color: Color(0xffFB1818),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ]),
            )
          : Container(
              child: Stack(children: [
                Image.asset(
                  "assets/screen.png",
                  fit: BoxFit.cover,
                  height: height,
                  width: width,
                ),
                Positioned(
                    top: height * 0.1,
                    left: width * 0.21,
                    child: Image.asset(
                      "assets/logo.png",
                      height: height * 0.3,
                    )),
                Positioned(
                  bottom: height * 0.05,
                  left: width * 0.05,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "WELCOME",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 45),
                      ),
                      Text(
                        "Best app for Betting",
                        style: TextStyle(color: Colors.black54, fontSize: 20),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          height: height * 0.065,
                          width: width * 0.9,
                          child: RaisedButton(
                            color: Color(0xffFB1818),
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => bottomNav(),
                                  ),
                                  (route) => false);
                            },
                            child: Text(
                              "GET STARTED",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          height: height * 0.065,
                          width: width * 0.9,
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignIN(),
                                  ));
                            },
                            child: Text(
                              "ALREADY ACCOUNT",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                color: Color(0xffFB1818),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ]),
            ),
    );
  }
}
