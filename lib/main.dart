import 'package:feed_meal_app/views/homepage.dart';
import 'package:flutter/material.dart';
import 'config/class_palette.dart';
import 'views/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: generateMaterialColor(Palette.primary)),
    initialRoute: 'login',
    routes: {
      '/': (context) => const HomePage(),
      'login': (context) => const LoginPage()
    },
  ));
}
