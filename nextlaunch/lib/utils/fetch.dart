import 'package:nextlaunch/utils/models.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

List<Article> parseArticles(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Article>((json) => Article.fromJson(json)).toList();
}

Future<List<Article>> fetchArticles(http.Client client) async {
  const String url = 'https://api.spaceflightnewsapi.net/v3/articles';
  final response = await client.get(Uri.parse(url));
  return compute(parseArticles, response.body);
}