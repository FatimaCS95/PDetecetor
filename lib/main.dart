import 'package:PDetector/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter/cupertino.dart';
import 'package:PDetector/chart_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Bottom Navigation Bar Demo",
        debugShowCheckedModeBanner: false,
        home: MyBottomNavigationBarDemo());
  }
}

class MyBottomNavigationBarDemo extends StatefulWidget {
  @override
  _MyBottomNavigationBarDemoState createState() =>
      _MyBottomNavigationBarDemoState();
}

class _MyBottomNavigationBarDemoState extends State<MyBottomNavigationBarDemo> {
  int _selectedItemIndex = 0;
  final List pages = [MainPage(), Chart()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // cards
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                height: 120,
                color: Colors.indigo,
                child: Center(child: Text("WaveClipperTwo()")),
              ),
            ),
            pages[_selectedItemIndex],
          ],
        ),
      ),

//bottom navigation bar
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: Colors.indigo,
          buttonBackgroundColor: Colors.indigo,
          height: 60,
          animationDuration: Duration(
            milliseconds: 200,
          ),
          index: 0,
          animationCurve: Curves.bounceInOut,
          items: <Widget>[
            Icon(
              Icons.favorite,
              size: 30,
              color: Colors.white,
            ),
            Icon(Icons.verified_user, size: 30, color: Colors.white),
            Icon(Icons.home, size: 30, color: Colors.white),
            /* Icon(Icons.settings, size: 30, color: Colors.white),
          Icon(Icons.more_horiz, size: 30, color: Colors.white), */
          ],
          onTap: (int index) {
            setState(() {
              _selectedItemIndex = index;
            });
          }),
    );
  }
}
