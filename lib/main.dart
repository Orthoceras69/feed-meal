import 'package:flutter/material.dart';
import 'utils/class_palette.dart';
import 'views/homepage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: generateMaterialColor(Palette.primary),
    ),
    home: const HomePage(),
  ));
}
