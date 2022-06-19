import 'package:feed_meal_app/config/class_palette.dart';
import 'package:flutter/material.dart';
import './mealrecipes.dart';

Widget mealCard(BuildContext context, String meal) {
  return Container(
    margin: const EdgeInsets.only(top: 10, bottom: 10),
    decoration: const BoxDecoration(
        color: Palette.light,
        borderRadius: BorderRadius.all(Radius.circular(16))),
    child: ListTile(
      leading:
          Image(image: AssetImage("assets/img/" + meal + ".png"), width: 50),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          mealRecipes(context, "Bol de Lait au Chocolat"),
          mealRecipes(context, "100g de céréales Lion"),
          mealRecipes(context, "Jus d’orange"),
        ],
      ),
      subtitle: const Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Text(
          "Calories : 999 kcal",
          style: TextStyle(color: Palette.grey, fontSize: 12),
        ),
      ),
    ),
  );
}
