import 'package:flutter/material.dart';

void main(){
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
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      bottomNavigationBar: new BottomNavigationBar(items: <BottomNavigationBarItem>[
        new BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home"),backgroundColor: Colors.white),
        new BottomNavigationBarItem(icon: Icon(Icons.event), title: Text("GDG Tekirdağ")),
        new BottomNavigationBarItem(icon: Icon(Icons.supervisor_account), title: Text("Sponsorlar")),
      ],fixedColor: Colors.transparent,type: BottomNavigationBarType.shifting,),
      body:Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage("assets/kopya.jpg"),fit: BoxFit.fitWidth),
            ),
            child:Column(
            children: <Widget>[
            new Container(
              margin: EdgeInsets.only(top: 100.0,right: 13.0),
              alignment: FractionalOffset.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new Text("DevFest`18",style: TextStyle(fontSize: 36.0,color: Colors.white),),
                  new Container(margin: EdgeInsets.all(3.0),),
                  new Text("Tekirdağ",style: TextStyle(fontSize: 24.0,color: Colors.white)),
                  new Container(margin: EdgeInsets.all(4.0),),
                  new Text("17 Ekim 2018",style: TextStyle(fontSize: 14.0,color: Colors.white)),
                  new Text("Çorlu Mühendislik Fakültesi",style: TextStyle(fontSize: 14.0,color: Colors.white)),
                  new Container(margin: EdgeInsets.all(4.0),),
                  new RaisedButton(onPressed: (){},child: new Text("Konum"),),
                  new Container(margin: EdgeInsets.all(25.0),),
                ],
              ),
            ),
            new Container(
              height: 200.0,
              child:  new ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 90.09),
                children: <Widget>[
                 new Card(
                     child: new Container(
                     width: 150.0,
                     color: Colors.red,
                     child: Text("Devfest`18"),
                   ),
                 ),
                 new Card(
                   child: new Container(
                     width: 150.0,
                     color: Colors.red,
                     child: Text("Devfest`18"),
                   ),
                 ),
                 new Card(
                   child: new Container(
                     width: 150.0,
                     color: Colors.red,
                     child: Text("Devfest`18"),
                   ),
                 ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
