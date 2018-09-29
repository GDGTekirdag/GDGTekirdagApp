import 'package:flutter/material.dart';

class GdgTekirdagScreen extends StatefulWidget {
  @override
  _GdgTekirdagScreenState createState() => new _GdgTekirdagScreenState();
}

class _GdgTekirdagScreenState extends State<GdgTekirdagScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Container(
          child: new Column(
            children: <Widget>[
              new Container(
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/gdgresim.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
                height: 190.0,
                margin: EdgeInsets.all(9.0),
              ),
              new Container(
                alignment: FractionalOffset.centerLeft,
                margin: EdgeInsets.only(left: 25.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      "GDG Tekirdağ",
                      style: new TextStyle(fontSize: 24.0),
                    ),
                    new Container(
                      margin: EdgeInsets.all(2.0),
                    ),
                    new Text(
                      "26 Organizasyon",
                      style: new TextStyle(fontSize: 12.0),
                    ),
                  ],
                ),
              ),
              new Container(
                margin: EdgeInsets.all(7.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  new Container(
                    alignment: FractionalOffset.center,
                    child: new FlatButton(
                        onPressed: () {}, child: Text("ORGANİZER")),
                  ),
                  new Container(
                    width: 0.7,
                    color: Colors.black,
                    child: new Text(""),
                    alignment: FractionalOffset.centerLeft,
                  ),
                  new Container(
                    alignment: FractionalOffset.center,
                    child:
                        new FlatButton(onPressed: () {}, child: Text("MEETUP")),
                  )
                ],
              ),
            ],
          ),
        ),
        new Container(
          child: new Column(
            children: <Widget>[
              new ListTile(
                title: Text("SIK SORULAN SORULAR ?"),
                leading: Icon(Icons.question_answer),
              ),
              new Container(
                child: new ListTile(
                  title: Text("Soru1"),
                  subtitle: Text("Cevap1"),
                ),
                color: Colors.white70,
                margin: new EdgeInsets.all(8.0),
              ),

              new Container(
                child: new ListTile(
                  title: Text("Soru1"),
                  subtitle: Text("Cevap1"),
                ),
                color: Colors.white70,
                margin: new EdgeInsets.all(8.0),
              ),

              new Container(
                child: new ListTile(
                  title: Text("Soru1"),
                  subtitle: Text("Cevap1"),
                ),
                color: Colors.white70,
                margin: new EdgeInsets.all(8.0),
              ),

              new Container(
                child: new ListTile(
                  title: Text("Soru1"),
                  subtitle: Text("Cevap1"),
                ),
                color: Colors.white70,
                margin: new EdgeInsets.all(8.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
