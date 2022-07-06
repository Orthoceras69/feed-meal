import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'config/class_palette.dart';
import 'views/login.dart';

void main() async {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: generateMaterialColor(Palette.primary)),
      home: const LoginPage()));
  await dotenv.load(fileName: ".env");
}
