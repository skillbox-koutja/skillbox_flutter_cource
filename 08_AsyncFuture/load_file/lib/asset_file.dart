import 'package:flutter/services.dart';

class AssetFile {
  final String fileName;

  const AssetFile(this.fileName);

  Future<String> read() async {
    return rootBundle.loadString('assets/$fileName').then((file) => file);
  }
}
