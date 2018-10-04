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
          new Container(
            margin: EdgeInsets.all(5.0),
          ),
          new Center(
            child: Card(
              color: Colors.blue,
              child: Container(
                child: Text("Ana Destekçimiz",
                    style: TextStyle(fontSize: 18.0, color: Colors.white)),
                padding: EdgeInsets.all(4.0),
              ),
            ),
          ),
          new Container(
            margin: EdgeInsets.all(5.0),
          ),
          new Center(
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Google-Logo.svg/1280px-Google-Logo.svg.png",
              width: 200.0,
            ),
          ),
          new Center(
            child: Card(
              color: Colors.red,
              child: Container(
                child: Text("Sponsorlarımız",
                    style: TextStyle(fontSize: 14.0, color: Colors.white)),
                padding: EdgeInsets.all(4.0),
              ),
            ),
          ),
          new Container(
            margin: EdgeInsets.all(10.0),
            child: new GridView(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 9.0),
              children: <Widget>[
                new Image.asset(
                  "assets/namıklogo.png",
                  width: 100.0,
                  fit: BoxFit.scaleDown,
                ),
                new Image.network(
                  "https://www.vectorlogo.zone/logos/jetbrains/jetbrains-card.png",
                  width: 150.0,
                  fit: BoxFit.cover,
                ),
                new Image.asset("assets/orion.png", width: 150.0),
                new Image.network(
                  "https://ktechteam.com/wp-content/uploads/2017/05/Resim1.png",
                  width: 150.0,
                  fit: BoxFit.scaleDown,
                ),
                new Image.network(
                  "http://s3.amazonaws.com/hdteknohaber/wp-content/uploads/2016/10/28122538/hdteknohaber-logo1.png",
                  width: 150.0,
                  fit: BoxFit.scaleDown,
                ),
              ],
            ),
          ),
          new Container(
            margin: EdgeInsets.all(6.0),
            child: new Card(
              child: new Container(
                child: Text(
                  "Tüm sponsorlarımıza katkılarından dolayı \n teşekkür ederiz.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
                padding: EdgeInsets.all(3.0),
              ),
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
