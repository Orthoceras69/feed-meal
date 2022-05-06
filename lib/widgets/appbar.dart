import 'package:feed_meal_app/config/class_palette.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget myAppBar(BuildContext context, String title) {
  return AppBar(
      title: Text(title,
          style:
              const TextStyle(fontFamily: "FredokaOne", color: Palette.dark)),
      leading: Builder(
          builder: (context) => IconButton(
              icon: const Icon(Icons.lunch_dining, color: Palette.dark),
              onPressed: () => Scaffold.of(context).openDrawer())));
}
