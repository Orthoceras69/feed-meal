import 'package:feed_meal_app/config/class_palette.dart';
import 'package:feed_meal_app/views/login.dart';
import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/drawer.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

String title = "Réglages";

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(context, title),
        body: Container(
            decoration: const BoxDecoration(color: Palette.light),
            child: Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text("Vous souhaitez vous déconnecter :"),
                      ),
                      Stack(children: <Widget>[
                        Positioned.fill(
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Palette.secondary,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                          ),
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.only(
                                  top: 16, left: 50, right: 50, bottom: 16),
                              primary: Palette.light,
                              textStyle: const TextStyle(
                                  fontSize: 16, fontFamily: "Roboto"),
                            ),
                            onPressed: () {
                              // Déconnecter l'utilisateur
                              Navigator.popUntil(
                                  context, ModalRoute.withName('login'));
                            },
                            child: const Text('Disconnect'))
                      ])
                    ])))),
        drawer: myDrawer(context, title));
  }
}
