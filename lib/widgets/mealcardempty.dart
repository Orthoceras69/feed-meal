import 'package:feed_meal_app/config/class_palette.dart';
import 'package:flutter/material.dart';

Widget mealCardEmpty(BuildContext context, String meal) {
  return Container(
    width: double.infinity,
    height: 150,
    margin: const EdgeInsets.only(top: 10, bottom: 10),
    decoration: const BoxDecoration(
        color: Palette.grey,
        borderRadius: BorderRadius.all(Radius.circular(16))),
    child: const Icon(
      Icons.add_circle,
      color: Palette.dark,
      size: 50,
    ),
  );
}
