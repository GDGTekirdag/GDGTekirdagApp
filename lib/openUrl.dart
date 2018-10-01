import 'package:url_launcher/url_launcher.dart';
import 'dart:async';
class openUrl {

  static Future<Null> launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false, forceWebView: false);
    } else {
      throw 'Could not launch $url';
    }
  }

   static Future<Null> launchUrlMap(String long,String lati) async {
    String url="https://www.google.com/maps/search/?api=1&query=$lati,$long";
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false, forceWebView: false);
    } else {
      throw 'Could not launch $url';
    }
  }


}