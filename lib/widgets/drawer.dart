import 'package:feed_meal_app/config/class_palette.dart';
import 'package:flutter/material.dart';

Widget myDrawer(BuildContext context, String title) {
  return Drawer(
      backgroundColor: Palette.light,
      child: ListView(children: [
        DrawerHeader(
            decoration: const BoxDecoration(color: Palette.primary),
            child: Column(children: [
              Text(title,
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: "FredokaOne",
                      color: Palette.dark),
                  semanticsLabel: title)
            ])),
        Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      ListTile(
                          leading: Icon(Icons.event, color: Palette.dark),
                          title: Text("Planning",
                              style: TextStyle(color: Palette.dark))),
                      ListTile(
                          leading:
                              Icon(Icons.dinner_dining, color: Palette.dark),
                          title: Text("Repas",
                              style: TextStyle(color: Palette.dark))),
                      ListTile(
                          leading: Icon(Icons.menu_book, color: Palette.dark),
                          title: Text("Recette",
                              style: TextStyle(color: Palette.dark))),
                    ],
                  ),
                  Column(
                    children: const [
                      ListTile(
                          leading: Icon(Icons.settings, color: Palette.dark),
                          title: Text("Réglages",
                              style: TextStyle(color: Palette.dark))),
                    ],
                  ),
                ]))
      ]));
}
