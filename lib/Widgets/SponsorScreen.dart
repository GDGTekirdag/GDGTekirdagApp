import 'package:flutter/material.dart';

class SponsorScreen extends StatefulWidget {
  @override
  _SponsorScreenState createState() => new _SponsorScreenState();
}

class _SponsorScreenState extends State<SponsorScreen> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: ListView(
        children: <Widget>[
          new Container(margin: EdgeInsets.all(5.0),),
          new Center(
            child: Card(
              color: Colors.blue,
              child: Container(child: Text("Ana Destekçimiz",style: TextStyle(fontSize: 18.0,color: Colors.white)),padding: EdgeInsets.all(4.0),),
            ),
          ),
          new Container(margin: EdgeInsets.all(5.0),),
          new Center(
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Google-Logo.svg/1280px-Google-Logo.svg.png",
              width: 200.0,
            ),
          ),
          new Center(
            child: Card(
              color: Colors.red,
              child: Container(child: Text("Sponsorlarımız",style: TextStyle(fontSize: 14.0,color: Colors.white)),padding: EdgeInsets.all(4.0),),
            ),
          ),
          new Container(
            child: new GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              shrinkWrap: true,
              children: <Widget>[
                new Image.network("https://www.vectorlogo.zone/logos/jetbrains/jetbrains-card.png",width: 150.0,fit: BoxFit.cover,),
                new Image.asset("assets/orion.png",width: 150.0),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
