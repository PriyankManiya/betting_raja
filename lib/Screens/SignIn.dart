import 'package:betting_raja/Screens/SignUp.dart';
import 'package:betting_raja/Screens/SplasScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIN extends StatefulWidget {
  @override
  _SignINState createState() => _SignINState();
}

class _SignINState extends State<SignIN> {
  var width;
  var height;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: height < 600
            ? SingleChildScrollView(
                child: Stack(children: [
                  Image.asset(
                    "assets/screen-2.png",
                    fit: BoxFit.cover,
                    height: height,
                    width: width,
                  ),
                  Positioned(
                      top: height * 0.08,
                      left: width * 0.3,
                      child: Image.asset(
                        "assets/logo.png",
                        height: height * 0.22,
                      )),
                  Positioned(
                    bottom: height * 0.04,
                    left: width * 0.05,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "SIGN IN",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 23),
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: height * 0.065,
                          width: width * 0.9,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 15),
                            child: TextFormField(
                              textAlign: TextAlign.start,
                              cursorColor: Colors.red,
                              style: TextStyle(fontSize: 17),
                              decoration: InputDecoration(
                                  hintText: "Email Address",
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: height * 0.065,
                          width: width * 0.9,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 15),
                            child: TextFormField(
                              textAlign: TextAlign.start,
                              obscureText: true,
                              cursorColor: Colors.red,
                              style: TextStyle(fontSize: 17),
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            height: height * 0.065,
                            width: width * 0.9,
                            child: RaisedButton(
                              color: Color(0xffFB1818),
                              onPressed: () {
                                /* Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
                              ));*/
                              },
                              child: Text(
                                "SIGN IN",
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
                        Text(
                          "OR",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 17),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/google.png",
                              scale: 11,
                            ),
                            SizedBox(
                              width: width * 0.1,
                            ),
                            Image.asset(
                              "assets/facebook.png",
                              scale: 10,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            Text(
                              "Already Account ?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17),
                            ),
                            SizedBox(
                              width: width * 0.05,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUp(),
                                    ),
                                    (route) => false);
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Color(0xffFB1818),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: height * 0.045,
                    left: 20,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SplashScreen(),
                            ),
                            (route) => false);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            // color: Colors.white60,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 1, bottom: 5 /*,left: 5,right: 5*/),
                          child: Icon(
                            CupertinoIcons.back,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
              )
            : SingleChildScrollView(
                child: Stack(children: [
                  Image.asset(
                    "assets/screen-2.png",
                    fit: BoxFit.cover,
                    height: height,
                    width: width,
                  ),
                  Positioned(
                      top: height * 0.07,
                      left: width * 0.25,
                      child: Image.asset(
                        "assets/logo.png",
                        height: height * 0.25,
                      )),
                  Positioned(
                    bottom: height * 0.08,
                    left: width * 0.05,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "SIGN IN",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 25),
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: height * 0.065,
                          width: width * 0.9,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 15),
                            child: TextFormField(
                              textAlign: TextAlign.start,
                              cursorColor: Colors.red,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                  hintText: "Email Address",
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          height: height * 0.065,
                          width: width * 0.9,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 15),
                            child: TextFormField(
                              textAlign: TextAlign.start,
                              obscureText: true,
                              cursorColor: Colors.red,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  focusedBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.04,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            height: height * 0.065,
                            width: width * 0.9,
                            child: RaisedButton(
                              color: Color(0xffFB1818),
                              onPressed: () {
                                /* Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
                              ));*/
                              },
                              child: Text(
                                "SIGN IN",
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
                        Text(
                          "OR",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 17),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/google.png",
                              scale: 10,
                            ),
                            SizedBox(
                              width: width * 0.1,
                            ),
                            Image.asset(
                              "assets/facebook.png",
                              scale: 9,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Row(
                          children: [
                            Text(
                              "Already Account ?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17),
                            ),
                            SizedBox(
                              width: width * 0.05,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUp(),
                                    ),
                                    (route) => false);
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    color: Color(0xffFB1818),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 17),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: height * 0.045,
                    left: 20,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SplashScreen(),
                            ),
                            (route) => false);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            // color: Colors.white60,
                            borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 1, bottom: 5 /*,left: 5,right: 5*/),
                          child: Icon(
                            CupertinoIcons.back,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
              ),
      ),
    );
  }
}
