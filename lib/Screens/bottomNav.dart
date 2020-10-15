import 'package:betting_raja/Screens/Dashboard.dart';

/// Flutter code sample for BottomNavigationBar

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets and the [currentIndex] is set to index 0. The selected item is
// amber. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].
//
// ![A scaffold with a bottom navigation bar containing three bottom navigation
// bar items. The first one is selected.](https://flutter.github.io/assets-for-api-docs/assets/material/bottom_navigation_bar.png)

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// This is the main application widget.

/// This is the stateful widget that the main application instantiates.
// ignore: camel_case_types
class bottomNav extends StatefulWidget {
  bottomNav({Key key}) : super(key: key);

  @override
  bottomNavState createState() => bottomNavState();
}

/// This is the private State class that goes with MyStatefulWidget.
// ignore: camel_case_types
class bottomNavState extends State<bottomNav> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Dashboard(),
    Text(
      'MY MATCHES',
      style: optionStyle,
    ),
    Text(
      'HISTORY',
      style: optionStyle,
    ),
    Text(
      'SETTINGS',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.account_balance_wallet), onPressed: () {})
        ],
        title: SvgPicture.asset("assets/logo/blackandwhiteLOGO.svg"),
        centerTitle: true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color(0xffFB1818),
            icon: FaIcon(FontAwesomeIcons.home),
            title: Text('HOME'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xffFB1818),
            icon: FaIcon(FontAwesomeIcons.trophy),
            title: Text('MY MATCHES'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xffFB1818),
            icon: FaIcon(FontAwesomeIcons.history),
            title: Text('HISTORY'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xffFB1818),
            icon: FaIcon(FontAwesomeIcons.cog),
            title: Text('SETTINGS'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
