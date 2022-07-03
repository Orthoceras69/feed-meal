import 'package:feed_meal_app/config/class_palette.dart';
import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/drawer.dart';
import '../widgets/daycard.dart';
import '../services/recipesAPI.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

String title = "Planning";

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    getRecipes();
  }

  var recipes;

  Future<void> getRecipes() async {
    try {
      print("tryingg");
      recipes = await getRecipesData();
      print(recipes.toString());
    } catch (e) {
      debugPrint('$e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(context, title),
        body: Container(
            decoration: const BoxDecoration(color: Palette.light),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                dayCard(context, "Monday"),
                dayCard(context, "Tuesday"),
                dayCard(context, "Wednesday"),
                dayCard(context, "Thursday"),
                dayCard(context, "Friday"),
                dayCard(context, "Saturday"),
                dayCard(context, "Sunday"),
              ],
            )),
        drawer: myDrawer(context, title));
  }
}
