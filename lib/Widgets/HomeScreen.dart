import 'package:flutter/material.dart';
import 'package:devfest_18/ApiClient.dart';
import 'package:devfest_18/Repos.dart';
import 'package:http/http.dart' as http;
import 'DetailScreen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:devfest_18/openUrl.dart';

class HomeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => new _homeScreenState();
}

class _homeScreenState extends State {
  static double long;
  static double lati;

  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
            image: new AssetImage("assets/kopya.jpg"), fit: BoxFit.fitWidth),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          new Container(
            child: new FutureBuilder<List<Repos>>(
              future: ApiClient.fetchData(http.Client()),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return new Container(
                    alignment: FractionalOffset.centerRight,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.only(right: 20.0),
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              new Text(
                                snapshot.data.last.ad,
                                style: TextStyle(fontSize: 36.0, color: Colors.white),
                                textAlign: TextAlign.end,
                              ),
                              new Container(
                                margin: EdgeInsets.all(3.0),
                              ),
                              new Text(snapshot.data.last.tarih,
                                  style:
                                  TextStyle(fontSize: 24.0, color: Colors.white)),
                              new Container(
                                margin: EdgeInsets.all(4.0),
                              ),
                              new Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  new OutlineButton.icon(
                                    onPressed: () {
                                      setState(() {
                                        openUrl.launchUrlMap(snapshot.data.last.konum.long.toString(),snapshot.data.last.konum.lati.toString());
                                      });
                                    },
                                    icon: Icon(Icons.person_pin_circle),
                                    label: new Text(
                                      "Konum",
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                    highlightColor: Colors.black,
                                    textColor: Colors.white,
                                    borderSide:
                                    BorderSide(color: Colors.white, width: 3.0),
                                  ),
                                  new Container(margin: EdgeInsets.only(right: 12.0),),
                                  new OutlineButton.icon(
                                    onPressed: () {
                                      setState(() {
                                        openUrl.launchUrl(snapshot.data.last.meetUp);
                                      });
                                    },
                                    icon: Icon(Icons.event),
                                    label: new Text(
                                      "Meetup",
                                      style: TextStyle(fontSize: 18.0),
                                    ),
                                    highlightColor: Colors.black,
                                    textColor: Colors.white,
                                    borderSide:
                                    BorderSide(color: Colors.white, width: 3.0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        new Container(
                          margin: EdgeInsets.all(35.0),
                        ),
                        new Container(
                          height: 200.0,
                          child: new ListView.builder(
                            padding: EdgeInsets.only(left: 90.0),
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, int count) {
                              int index=(snapshot.data.length-1)-count;
                              return new GestureDetector(
                                onTap: () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => GdgTekirdagScreen(
                                              liste: snapshot.data,
                                              index: index,
                                            )));
                                  });
                                },
                                child: Card(
                                  color: Colors.white,
                                  child: new Container(
                                    width: 150.0,
                                    height: 200.0,
                                    child: new Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        new Container(
                                          child: new Text(snapshot.data[index].ad,
                                              textAlign: TextAlign.center),
                                          margin: EdgeInsets.all(8.0),
                                          height: 26.0,
                                        ),
                                        new Container(
                                          alignment: FractionalOffset.center,
                                          child: OutlineButton.icon(
                                              onPressed: () {
                                                setState(() {
                                                  openUrl.launchUrl(snapshot.data[index].meetUp);
                                                });
                                              },
                                              icon: Icon(Icons.event),
                                              label: Text("Meetup")),
                                        ),

                                        new Container(
                                          alignment: FractionalOffset.bottomCenter,
                                          child: new Text(
                                            snapshot.data[index].tarih,
                                            textAlign: TextAlign.center,
                                            style: new TextStyle(fontSize: 12.0),
                                          ),
                                          margin: EdgeInsets.all(8.0),
                                        ),
                                        new Container(
                                          alignment: FractionalOffset.bottomRight,
                                          margin: EdgeInsets.only(right: 12.0),
                                          child: Image.asset(
                                            'assets/gdgtekirdag.png',
                                            width: 56.0,
                                            height: 48.0,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                }
                return new Center(
                  child:CircularProgressIndicator(valueColor:new AlwaysStoppedAnimation<Color>(Colors.white)),
                );
              },
            ),
          ),

        ],
      ),
    );
  }
}
