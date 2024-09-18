import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:l_store/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:l_store/data/repositories/authentication/authentication_repository.dart';
import 'package:l_store/firebase_options.dart';

Future<void> main() async {
  //Add widgets binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  //--GetX Local Storage
  await GetStorage.init();

  //Await Splash until other items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform).then(
    (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );

  runApp(const App());
}
