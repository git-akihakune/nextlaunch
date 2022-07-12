import 'package:nextlaunch/utils/models.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

List<Article> parseArticles(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Article>((json) => Article.fromJson(json)).toList();
}

Future<List<Article>> fetchArticles(
    http.Client client, int offset, int limit) async {
  String url =
      'https://api.spaceflightnewsapi.net/v3/articles?_start=$offset&_limit=$limit';
  final response = await client.get(Uri.parse(url));
  return compute(parseArticles, response.body);
}

List<Launch> parseLaunches(String responseBody) {
  final parsed =
      jsonDecode(responseBody)['results'][0].cast<Map<String, dynamic>>();
  return parsed.map<Launch>((json) => Launch.fromJson(json)).toList();
}

Future<List<Launch>> fetchLaunches(
    http.Client client, String timeline, int offset, int limit) async {
  String url =
      'https://spacelaunchnow.me/api/ll/2.1.0/launch/$timeline/?offset=$offset&limit=$limit';
  final response = await client.get(Uri.parse(url));
  return compute(parseLaunches, response.body);
}
