import 'package:flutter/material.dart';
import 'package:devfest_18/Repos.dart';

class  GdgTekirdagScreen extends StatefulWidget{

  List<Repos> liste;
  GdgTekirdagScreen({this.liste});
  createState() => new GdgTekirdagScreenState(data: liste);
}

class GdgTekirdagScreenState extends State<GdgTekirdagScreen> {
  List<Repos> data;
  GdgTekirdagScreenState({this.data});

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: ListView(
          children: <Widget>[
            new Container(
              height: 250.0,
              decoration: new BoxDecoration(
                image: new DecorationImage(image: new AssetImage("assets/gdgresim.jpg"),fit: BoxFit.cover,colorFilter: ColorFilter.mode(Colors.black, BlendMode.color)),
              ),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new Container(
                    alignment: FractionalOffset.topLeft,
                    child: new IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){setState(() {
                      Navigator.of(context).pop();
                    });},color: Colors.black,iconSize: 38.0,disabledColor: Colors.red,splashColor: Colors.red,),
                  ),
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
                      new Text("Katılımcı Sayısı",style: TextStyle(fontWeight: FontWeight.bold),),
                      new Text(data[0].katilimciSayisi),
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
                      new Text("Sunum",style: TextStyle(fontWeight: FontWeight.bold)),
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
                      new Text("WorkShop",style: TextStyle(fontWeight: FontWeight.bold)),
                      new Text("8"),
                    ],
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
