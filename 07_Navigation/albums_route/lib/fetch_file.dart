import 'package:flutter/services.dart';
import 'dart:convert';

Future<String> fetchFileFromAssets(String assetsPath) async {
  return rootBundle.loadString(assetsPath).then((file) => file);
}

Future<List<dynamic>> fetchJsonFromAssetsFile(String assetsPath) async {
  return fetchFileFromAssets(assetsPath).then((jsonStr) => jsonDecode(jsonStr));
}
