import 'package:flutter/material.dart';
import 'Widgets/HomeScreen.dart';
import 'Widgets/GdgTekirdagScreen.dart';
import 'Widgets/SponsorScreen.dart';
import 'Repos.dart';

void main() {
  runApp(
    new MaterialApp(
      home: new MyApp(),
      debugShowCheckedModeBanner: false,
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
    pages = [HomeScreen(), GdgTekirdagScreen(),SponsorScreen()];
    value = pages[0];

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new BottomNavigationBar(
        currentIndex: navigationIndex,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.orange,),
            title: Text("Home",style: TextStyle(color: Colors.orange),),
            backgroundColor: Colors.black,
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.event,color: Colors.orange,),
            title: Text("GDG Tekirdağ",style: TextStyle(color: Colors.orange),),
            backgroundColor: Colors.white70,
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.supervisor_account,color: Colors.orange,),
              title: Text("Sponsorlar",style: TextStyle(color: Colors.orange),),
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
