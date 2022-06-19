import 'package:feed_meal_app/config/class_palette.dart';
import 'package:feed_meal_app/widgets/mealcardempty.dart';
import 'package:flutter/material.dart';
import './mealcard.dart';

Widget dayCard(BuildContext context, String day) {
  return Container(
      width: 275,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Palette.primary,
              Palette.primaryGradient,
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(16)),
          boxShadow: [
            BoxShadow(
              color: Palette.grey,
              blurRadius: 10,
            ),
          ]),
      child: Column(children: [
        Text(day,
            style: const TextStyle(
                color: Palette.light, fontFamily: "FredokaOne", fontSize: 20)),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Breakfast",
                textAlign: TextAlign.left,
                style:
                    TextStyle(fontFamily: "FredokaOne", color: Palette.light),
              ),
              mealCard(context, "Breakfast"),
              const Text(
                "Lunch",
                style:
                    TextStyle(fontFamily: "FredokaOne", color: Palette.light),
              ),
              mealCard(context, "Lunch"),
              const Text(
                "Diner",
                style:
                    TextStyle(fontFamily: "FredokaOne", color: Palette.light),
              ),
              mealCardEmpty(context, "Diner"),
            ],
          ),
        ),
      ]));
}
