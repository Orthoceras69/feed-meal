import 'package:feed_meal_app/config/class_palette.dart';
import 'package:feed_meal_app/widgets/listviewbuilder.dart';
import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/drawer.dart';

class RecipesPage extends StatefulWidget {
  const RecipesPage({Key? key}) : super(key: key);
  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

String title = "Mes Recettes";

class _RecipesPageState extends State<RecipesPage> {
  final TextEditingController _textController = TextEditingController();
  List<String> initialList = [
    "Pate à la Bolognaise",
    "Pate à la Carbonara",
    "Un Bourguignon",
    "Une Poutine",
    "Une Omelette aux Chips",
    "Des Lasagnes"
  ];
  List<String> filteredList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(context, title),
        body: Container(
            decoration: const BoxDecoration(color: Palette.light),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _textController,
                  onChanged: (text) {
                    text = text.toLowerCase();
                    setState(() {
                      filteredList = initialList
                          .where(
                              (element) => element.toLowerCase().contains(text))
                          .toList();
                    });
                  },
                ),
              ),
              if (filteredList.isEmpty && _textController.text.isEmpty)
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: listViewBuilder(context, initialList)))
              else if (filteredList.isEmpty && _textController.text.isNotEmpty)
                const Expanded(
                  child: Text('Aucune donnée'),
                )
              else
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: listViewBuilder(context, filteredList)))
            ])),
        drawer: myDrawer(context, title));
  }
}
