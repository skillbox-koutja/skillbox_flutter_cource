import 'package:dartz/dartz.dart';
import 'package:firebase_project/feature/core/error/failure.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';

class AppBackgroundImageLoader {
  final storage = FirebaseStorage.instance;

  Future<Option<Either<Failure, ImageProvider>>> getUrl() async {
    try {
      final url = await storage.ref('bg-app.jpg').getDownloadURL();

      return Some(Right(NetworkImage(url)));
    } on FirebaseException catch (e) {
      debugPrint(e.toString());

      return Some(Left(NotFoundEntity()));
    }
  }
}
