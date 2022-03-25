import 'package:flutter/material.dart';
import 'views/homepage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.grey,
    ),
    home: const HomePage(),
  ));
}
