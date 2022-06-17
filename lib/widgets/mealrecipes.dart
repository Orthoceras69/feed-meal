import 'package:flutter/material.dart';

Widget mealRecipes(BuildContext context, String recipes) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Text(recipes, style: const TextStyle(fontSize: 14)),
  );
}
