import 'package:flutter/material.dart';
import 'package:devfest_18/ApiClient.dart';
import 'package:devfest_18/Repos.dart';
import 'package:http/http.dart' as http;
import 'DetailScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => new _homeScreenState();
}

class _homeScreenState extends State {
  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
            image: new AssetImage("assets/kopya.jpg"), fit: BoxFit.fitWidth),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
         new Container(
           child: new FutureBuilder<List<Repos>>(
             future: ApiClient.fetchData(http.Client()),
             builder: (context,snapshot){
               if(snapshot.hasData){
               return  new Container(
                 margin: EdgeInsets.only(top:40.0,right: 23.0),
                 alignment: FractionalOffset.centerRight,
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                   crossAxisAlignment: CrossAxisAlignment.end,
                   children: <Widget>[
                     new Text(
                       snapshot.data.first.ad,
                       style: TextStyle(fontSize: 36.0, color: Colors.white),
                       textAlign: TextAlign.end,
                     ),
                     new Container(
                       margin: EdgeInsets.all(3.0),
                     ),
                     new Text( snapshot.data.first.tarih,
                         style: TextStyle(fontSize: 24.0, color: Colors.white)),
                     new Container(
                       margin: EdgeInsets.all(4.0),
                     ),
                     new OutlineButton.icon(
                       onPressed: () {},
                       icon: Icon(Icons.person_pin_circle),
                       label: new Text("Konum",style: TextStyle(fontSize: 18.0),),
                       highlightColor: Colors.black,
                       textColor: Color(0xFFe6c131),
                       borderSide: BorderSide(color:Color(0xFFe6c131),width: 3.0),
                     ),
                     new Container(
                       margin: EdgeInsets.all(25.0),
                     ),
                   ],
                 ),
               );
             }
             return new Center(child: Text(""),);
             },
           ),
         ),
          new Container(
            height: 200.0,
            child: new FutureBuilder<List<Repos>>(
              future: ApiClient.fetchData(http.Client()),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return new ListView.builder(
                    padding: EdgeInsets.only(left: 90.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data.length,
                    itemBuilder: (context, int index) {
                      return new GestureDetector(
                        onTap: () {
                          setState(() {

                            Navigator.push(context, MaterialPageRoute(builder: (context)=> GdgTekirdagScreen(liste: snapshot.data)));


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
                                      onPressed: () {},
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
                  );
                }
                if (snapshot.hasError) return new Text("hasError");
                return new Center(
                  child: new CircularProgressIndicator(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
