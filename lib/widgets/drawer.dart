import 'package:feed_meal_app/config/class_palette.dart';
import 'package:feed_meal_app/views/homepage.dart';
import 'package:feed_meal_app/views/meal.dart';
import 'package:feed_meal_app/views/recipes.dart';
import 'package:feed_meal_app/views/recipes_research.dart';
import 'package:feed_meal_app/views/settings.dart';
import 'package:flutter/material.dart';

Widget myDrawer(BuildContext context, String title) {
  return Drawer(
      backgroundColor: Palette.light,
      child: ListView(children: [
        SizedBox(
            height: 60,
            child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Palette.primary,
                ),
                child: Column(children: [
                  Text(title,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: "FredokaOne",
                          color: Palette.dark),
                      semanticsLabel: title)
                ]))),
        Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(children: [
                    ListTile(
                        leading: const Icon(Icons.event, color: Palette.dark),
                        title: const Text("Planning",
                            style: TextStyle(color: Palette.dark)),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        }),
                    ListTile(
                        leading: const Icon(Icons.dinner_dining,
                            color: Palette.dark),
                        title: const Text("Repas",
                            style: TextStyle(color: Palette.dark)),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MealPage()));
                        }),
                    ListTile(
                        leading:
                            const Icon(Icons.menu_book, color: Palette.dark),
                        title: const Text("Mes Recettes",
                            style: TextStyle(color: Palette.dark)),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RecipesPage()));
                        }),
                    ListTile(
                        leading: const Icon(Icons.playlist_add_rounded,
                            color: Palette.dark),
                        title: const Text("Nouvelles Recettes",
                            style: TextStyle(color: Palette.dark)),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RecipesResearchPage()));
                        }),
                    Padding(
                        padding: EdgeInsetsDirectional.only(
                            top: MediaQuery.of(context).size.height * 0.5),
                        child: ListTile(
                            leading:
                                const Icon(Icons.settings, color: Palette.dark),
                            title: const Text("R??glages",
                                style: TextStyle(color: Palette.dark)),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SettingsPage()));
                            }))
                  ])
                ]))
      ]));
}
