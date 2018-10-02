import 'package:flutter/material.dart';
import 'package:devfest_18/Repos.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
import 'package:devfest_18/openUrl.dart';

class GdgTekirdagScreen extends StatefulWidget {
  List<Repos> liste;
  int index;
  GdgTekirdagScreen({this.liste, this.index});

  createState() => new GdgTekirdagScreenState(data: liste, index: index);
}

class GdgTekirdagScreenState extends State<GdgTekirdagScreen> {
  List<Repos> data;
  int index;
  GdgTekirdagScreenState({this.data, this.index});

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
                image: new DecorationImage(
                    image: new AssetImage("assets/gdgmap.png"),
                    fit: BoxFit.cover),
              ),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  new Container(
                    alignment: FractionalOffset.topLeft,
                    child: new IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).pop();
                        });
                      },
                      color: Colors.white,
                      iconSize: 38.0,
                      disabledColor: Colors.red,
                      splashColor: Colors.red,
                    ),
                  ),
                  new Container(
                    alignment: FractionalOffset.centerRight,
                    width: 220.0,
                    margin: EdgeInsets.only(right: 12.0),
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          child: new Text(
                            data[index].ad,
                            style: new TextStyle(
                                color: Colors.white, fontSize: 25.0),
                            textAlign: TextAlign.end,
                          ),
                          alignment: FractionalOffset.bottomRight,
                        ),
                        new Container(
                          padding: new EdgeInsets.all(6.0),
                        ),
                        new Container(
                          child: new RaisedButton(
                              onPressed: () {},
                              child: Text("Takvim"),
                              color: Colors.orange),
                          alignment: FractionalOffset.bottomRight,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            new Container(
              margin: EdgeInsets.only(left: 20.0, right: 23.0),
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      new Text(
                        "Katılımcı Sayısı",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      new Text(data[index].katilimciSayisi),
                    ],
                  ),
                  new Container(
                    width: 0.7,
                    color: Colors.black,
                    child: new Text(""),
                    padding: EdgeInsets.all(12.0),
                    margin: EdgeInsets.only(top: 6.0, bottom: 6.0),
                  ),
                  new Column(
                    children: <Widget>[
                      new Text("Sunum",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      new Text(data[index].sunum),
                    ],
                  ),
                  new Container(
                    width: 0.7,
                    color: Colors.black,
                    child: new Text(""),
                    padding: EdgeInsets.all(12.0),
                    margin: EdgeInsets.only(top: 6.0, bottom: 6.0),
                  ),
                  new Column(
                    children: <Widget>[
                      new Text("WorkShop",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      new Text(data[index].workshop),
                    ],
                  ),
                ],
              ),
            ),
            new Container(
              width: 10.0,
              color: Colors.black,
              alignment: FractionalOffset.center,
              margin: EdgeInsets.only(
                  top: 10.0, right: 160.0, left: 160.0, bottom: 10.0),
              padding: EdgeInsets.all(0.2),
            ),
            new Container(
              child: new Text(
                data[index].tarih,
                textAlign: TextAlign.center,
              ),
              margin: EdgeInsets.only(bottom: 10.0),
            ),
            new Container(
              child: new Text(
                "  " + data[index].aciklama,
                textAlign: TextAlign.center,
              ),
            ),
            new Container(
              alignment: FractionalOffset.bottomRight,
              margin: EdgeInsets.only(right: 12.0),
              child: OutlineButton.icon(
                  onPressed: () {
                    setState(() {
                      openUrl.launchUrl(data[index].meetUp);
                    });
                  },
                  color: Colors.white70,
                  borderSide: BorderSide(color: Colors.black54),
                  icon: Icon(
                    Icons.event,
                    color: Colors.blueGrey,
                  ),
                  label: Text(
                    "Meetup",
                    style: TextStyle(fontSize: 12.0),
                  )),
            ),
            new Container(
              width: 150.0,
              height: 150.0,
              child: new GridView.builder(
                  itemCount: data[index].img.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context,int t){
                    return new GestureDetector(
                      child: new Card(
                        color: Colors.grey,
                        child: Image.network(data[index].img[t],width: 10.0,height: 10.0,fit: BoxFit.cover,),
                      ),
                      onTap: (){
                       setState(() {
                         AlertDialog alert=new AlertDialog(
                           contentPadding: EdgeInsets.all(0.0),

                             content:new Container(
                               color: Colors.red,
                               child: Image.network(data[index].img[t],width: 350.0,height: 300.0,fit: BoxFit.cover,),
                               ),

                         );
                         showDialog(context: this.context,child: alert);
                       });
                      },
                    );
                  },

                  ),
            ),
          ],
        ),
      ),
    );
  }
}
