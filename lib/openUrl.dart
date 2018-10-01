import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
class openUrl {

  static Future<Null> launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }

   static Future<Null> launchUrlMap(String long,String lati) async {
    String url="https://maps.google.com/maps/dir//$long,$lati/";
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    } else {
      throw 'Could not launch $url';
    }
  }


}