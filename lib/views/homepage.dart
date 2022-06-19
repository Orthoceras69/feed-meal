import 'package:feed_meal_app/config/class_palette.dart';
import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/drawer.dart';
import '../widgets/daycard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

String title = "Planning";

class _HomePageState extends State<HomePage> {
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
