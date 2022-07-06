import 'package:feed_meal_app/config/class_palette.dart';
import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/drawer.dart';

class RecipesResearchPage extends StatefulWidget {
  const RecipesResearchPage({Key? key}) : super(key: key);
  @override
  State<RecipesResearchPage> createState() => _RecipesResearchPageState();
}

String title = "Nouvelles Recettes";

class _RecipesResearchPageState extends State<RecipesResearchPage> {
  final TextEditingController _textController = TextEditingController();
  List<String> initialList = [
    "Pate à la Bolognaise",
    "Pate à la Carbonara",
    "Un Bourguignon",
    "Une Poutine",
    "Une Omelette aux Chips",
    "Des Lasagnes",
    "Une Pizza 4 Fromages",
    "Une Pizza à l'Ananas"
  ];
  List<String> filteredList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(context, title),
        body: Container(
          decoration: const BoxDecoration(color: Palette.light),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _textController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(children: <Widget>[
                  Positioned.fill(
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Palette.secondary,
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                    ),
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(
                            top: 16, left: 50, right: 50, bottom: 16),
                        primary: Palette.light,
                        textStyle:
                            const TextStyle(fontSize: 16, fontFamily: "Roboto"),
                      ),
                      onPressed: () {
                        String researchText =
                            _textController.text.toLowerCase();
                        setState(() {
                          filteredList = initialList
                              .where((element) =>
                                  element.toLowerCase().contains(researchText))
                              .toList();
                        });
                      },
                      child: const Text('Rechercher'))
                ]),
              ),
              if (filteredList.isEmpty && _textController.text.isNotEmpty)
                const Expanded(
                  child: Text('Aucune donnée'),
                ),
              if (filteredList != [] && _textController.text != "")
                Expanded(
                  child: ListView.builder(
                      itemCount: filteredList.length,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: SizedBox(
                            height: 50,
                            child: ListTile(
                              leading: const Image(
                                  image: AssetImage("assets/img/repas.jpeg")),
                              title: Text(filteredList[index]),
                              trailing: const IconButton(
                                icon: Icon(Icons.add_circle_outline),
                                onPressed: null,
                              ),
                            ),
                          ),
                        );
                      }),
                ),
            ],
          ),
        ),
        drawer: myDrawer(context, title));
  }
}
