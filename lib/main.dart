import 'package:flutter/material.dart';
import 'Widgets/HomeScreen.dart';
import 'Widgets/GdgTekirdagScreen.dart';
import 'Widgets/SponsorScreen.dart';

void main() {
  runApp(
    new MaterialApp(
      home: new MyApp(),
    ),
  );
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int navigationIndex = 0;
  List<Widget> pages;
  Widget value;

  @override
  void initState() {
    super.initState();
    pages = new List<Widget>();
    pages = [HomeScreen(), SponsorScreen(), GdgTekirdagScreen()];
    value = pages[0];
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: navigationIndex,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            backgroundColor: Colors.black,
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.event),
            title: Text("GDG Tekirdağ"),
            backgroundColor: Colors.black,
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.supervisor_account),
              title: Text("Sponsorlar"),
              backgroundColor: Colors.black),
        ],
        type: BottomNavigationBarType.shifting,
        onTap: (int index) {
          setState(() {
            navigationIndex = index;
            value = pages[index];
          });
        },
      ),
      body: value,
    );
  }
}
