import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'dart:convert';
import 'package:devfest_18/Repos.dart';
const url="https://devfest18tekirdag.firebaseio.com/.json";

class ApiClient {
  static Future<List<Repos>> fetchData(http.Client client) async {
    final response= await client.get(url);

   return compute(parsedRepos,response.body);
  }

  static List<Repos> parsedRepos (String responseBody){
    final parsed=json.decode(responseBody).cast<Map<String,dynamic>>();

    return parsed.map<Repos>((json) => Repos.fromJson(json)).toList();
  }

}