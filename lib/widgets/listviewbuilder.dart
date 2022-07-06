import 'package:feed_meal_app/config/class_palette.dart';
import 'package:flutter/material.dart';

Widget listViewBuilder(BuildContext context, List list) {
  return ListTileTheme(
      contentPadding: const EdgeInsets.all(15),
      iconColor: Palette.light,
      textColor: Palette.light,
      tileColor: Palette.primary,
      style: ListTileStyle.list,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      dense: true,
      child: ListView.builder(
          itemCount: list.length,
          itemBuilder: ((_, index) => Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              margin: const EdgeInsets.all(10),
              elevation: 4,
              child: ListTile(
                  leading: const Icon(Icons.expand_more),
                  title: Text(list[index]),
                  trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.delete)),
                  ]))))));
}
