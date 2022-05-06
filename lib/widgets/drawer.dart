import 'package:feed_meal_app/config/class_palette.dart';
import 'package:flutter/material.dart';

Widget myDrawer(BuildContext context, String title) {
  return Drawer(
      backgroundColor: Palette.light,
      child: ListView(children: [
        SizedBox(
          height: 60,
          child: DrawerHeader(
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
        ),
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
                        onTap: () {}),
                    ListTile(
                        leading: const Icon(Icons.dinner_dining,
                            color: Palette.dark),
                        title: const Text("Repas",
                            style: TextStyle(color: Palette.dark)),
                        onTap: () {}),
                    ListTile(
                        leading:
                            const Icon(Icons.menu_book, color: Palette.dark),
                        title: const Text("Recette",
                            style: TextStyle(color: Palette.dark)),
                        onTap: () {}),
                    Padding(
                        padding: EdgeInsetsDirectional.only(
                            top: MediaQuery.of(context).size.height * 0.5),
                        child: ListTile(
                            leading:
                                const Icon(Icons.settings, color: Palette.dark),
                            title: const Text("Réglages",
                                style: TextStyle(color: Palette.dark)),
                            onTap: () {}))
                  ])
                ])),
      ]));
}
