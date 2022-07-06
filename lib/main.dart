import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'config/class_palette.dart';
import 'views/login.dart';

void main() async {
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyAX3dw-pvGEUypoG3bsH8km3RgETFBOERQ",
        authDomain: "feedmeal-c68c1.firebaseapp.com",
        projectId: "feedmeal-c68c1",
        storageBucket: "feedmeal-c68c1.appspot.com",
        messagingSenderId: "1096971385817",
        appId: "1:1096971385817:web:f023ff1866fb02d05677c8"),
  );

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: generateMaterialColor(Palette.primary)),
      home: const LoginPage()));
  await dotenv.load(fileName: ".env");
}
