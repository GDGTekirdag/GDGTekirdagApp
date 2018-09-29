import 'package:flutter/material.dart';

class  GdgTekirdagScreen extends StatefulWidget{
  @override
  GdgTekirdagScreenState createState() {
    return new GdgTekirdagScreenState();
  }

}

class GdgTekirdagScreenState extends State<GdgTekirdagScreen> {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        new Container(
          height: 250.0,
          decoration: new BoxDecoration(
            image: new DecorationImage(image: new AssetImage("assets/kopya.jpg"),fit: BoxFit.cover),
          ),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              new Container(
                alignment: FractionalOffset.centerRight,
                width: 220.0,
                child: new Column(
                  children: <Widget>[
                    new Text("DevFest`18",style: new TextStyle(color: Colors.white,fontSize: 38.0),),
                    new Container(padding: new EdgeInsets.all(2.0),),
                    new Text("Tekirdağ",style: new TextStyle(color: Colors.white,fontSize: 24.0),textAlign: TextAlign.end,),
                    new Container(padding: new EdgeInsets.all(6.0),),
                    new RaisedButton(onPressed: (){},child: Text("Takvim"),color: Colors.orange,),
                  ],
                ),
              ),
            ],
          ),
        ),
        new Container(
          margin: EdgeInsets.only(left: 20.0,right: 23.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new Text("Katılımcı Sayısı"),
                  new Text("350+"),
                ],
              ),
              new Container(
                width: 0.7,
                color: Colors.black,
                child: new Text(""),
                padding: EdgeInsets.all(12.0),
                margin: EdgeInsets.only(top: 6.0,bottom: 6.0),
              ),
              new Column(
                children: <Widget>[
                  new Text("Sunum"),
                  new Text("8"),
                ],
              ),
              new Container(
                width: 0.7,
                color: Colors.black,
                child: new Text(""),
                padding: EdgeInsets.all(12.0),
                margin: EdgeInsets.only(top: 6.0,bottom: 6.0),
              ),
              new Column(
                children: <Widget>[
                  new Text("WorkShop"),
                  new Text("8"),
                ],
              ),
            ],
          ),
        ),
        new Container(
          color: Colors.black,
          padding: EdgeInsets.all(0.3),
          margin: EdgeInsets.only(right: 12.0,left: 12.0),

        ),
      ],
    );
  }
}
