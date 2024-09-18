import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:l_store/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:l_store/firebase_options.dart';

Future<void> main() async {
  //Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then(
    (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );
  // Initialize Authentication

  runApp(const App());
}
