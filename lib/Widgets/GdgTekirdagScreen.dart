import 'package:flutter/material.dart';
import 'package:devfest_18/openUrl.dart';

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
                        onPressed: () {
                          setState(() {
                            openUrl.launchUrl("https://www.meetup.com/tr-TR/gdgtekirdag/members/?op=leaders");
                          });
                        }, child: Text("ORGANİZER")),
                  ),
                  new Container(
                    width: 0.7,
                    color: Colors.black,
                    child: new Text(""),
                    alignment: FractionalOffset.centerLeft,
                  ),
                  new Container(
                    alignment: FractionalOffset.center,
                    child: new FlatButton(
                        onPressed: () {
                          openUrl.launchUrl(
                              "https://www.meetup.com/tr-TR/gdgtekirdag/");
                        },
                        child: Text("MEETUP")),
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
                  title: Text("Para sizde mi kalıyor ?"),
                  subtitle: Text("Hayır"),
                ),
                color: Colors.white70,
                margin: new EdgeInsets.all(8.0),
              ),
              new Container(
                child: new ListTile(
                  title: Text("Katılım ücretli mi?"),
                  subtitle: Text("Hayır isteyen herkes tüm etkinliklerimize hiçbir ücret ödemeden katılabilir. Yani ücretsizdir."),
                ),
                color: Colors.white70,
                margin: new EdgeInsets.all(8.0),
              ),
              new Container(
                child: new ListTile(
                  title: Text("Etkinliklere katılmak için yazılımcı olmak gerekiyor mu ? "),
                  subtitle: Text("Hayır. Yeni teknolojilere ilgi duymanız yeterli olacaktır."),
                ),
                color: Colors.white70,
                margin: new EdgeInsets.all(8.0),
              ),
              new Container(
                child: new ListTile(
                  title: Text("Sizler Google çalışanı mısınız? "),
                  subtitle: Text("Hayır. Google bizim ana destekçimiz. "),
                ),
                color: Colors.white70,
                margin: new EdgeInsets.all(8.0),
              ),
              new Container(
                child: new ListTile(
                  title: Text("Ne sıklıkla etkinlikler düzenliyorsunuz ? "),
                  subtitle: Text("Yılda 2 büyük etkinlik(DevFest ve WTM) düzenliyoruz ve bunun yanında aylık etkinliklerimizde oluyor."),
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
