import 'package:feed_meal_app/config/class_palette.dart';
import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/drawer.dart';

class MealPage extends StatefulWidget {
  const MealPage({Key? key}) : super(key: key);
  @override
  State<MealPage> createState() => _MealPageState();
}

String title = "Repas";

class _MealPageState extends State<MealPage> {
  final List<Map<String, dynamic>> _items = List.generate(
      10,
      (index) => {
            "id": index,
            "title": "Repas $index",
            "subtitle": "Recettes du Repas $index"
          });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(context, title),
        body: Container(
            decoration: const BoxDecoration(color: Palette.light),
            child: ListTileTheme(
              contentPadding: const EdgeInsets.all(15),
              iconColor: Palette.light,
              textColor: Palette.light,
              tileColor: Palette.primary,
              style: ListTileStyle.list,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              dense: true,
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (_, index) => Card(
                  margin: const EdgeInsets.all(10),
                  elevation: 4,
                  child: ListTile(
                    leading: const Icon(Icons.expand_more),
                    title: Text(_items[index]['title']),
                    subtitle: Text(_items[index]['subtitle']),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.edit)),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.delete)),
                      ],
                    ),
                  ),
                ),
              ),
            )),
        drawer: myDrawer(context, title));
  }
}
