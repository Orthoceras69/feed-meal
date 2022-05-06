import 'package:feed_meal_app/config/class_palette.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

String title = "Login";

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            decoration: const BoxDecoration(color: Palette.primary),
            child: Column(children: [
              const Center(
                  child: Padding(
                      padding: EdgeInsets.only(top: 100.0),
                      child: Image(
                          image: AssetImage("assets/img/logo_blanc.png"),
                          width: 150))),
              Padding(
                  padding:
                      const EdgeInsets.only(top: 50.0, left: 25.0, right: 25.0),
                  child: Center(
                      child: Column(children: [
                    const Padding(
                      padding:
                          EdgeInsets.only(top: 20, left: 25.0, right: 25.0),
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Palette.light,
                            hintStyle: TextStyle(color: Palette.dark),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    style: BorderStyle.none, width: 0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            hintText: 'Username'),
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.only(top: 20, left: 25.0, right: 25.0),
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Palette.light,
                            hintStyle: TextStyle(color: Palette.dark),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    style: BorderStyle.none, width: 0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            hintText: 'Email'),
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.only(top: 20, left: 25.0, right: 25.0),
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Palette.light,
                            hintStyle: TextStyle(color: Palette.dark),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    style: BorderStyle.none, width: 0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16))),
                            hintText: 'Password'),
                      ),
                    ),
                    const Padding(
                        padding:
                            EdgeInsets.only(top: 20, left: 25.0, right: 25.0),
                        child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Palette.light,
                                hintStyle: TextStyle(color: Palette.dark),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        style: BorderStyle.none, width: 0),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16))),
                                hintText: 'Confirm Password'))),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20.0, left: 25, right: 25),
                      child: Stack(children: <Widget>[
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
                              // print('Signing In');
                            },
                            child: const Text('Signing In'))
                      ]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already an account ?",
                          style: TextStyle(color: Palette.dark),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "Log In",
                              style: TextStyle(color: Palette.light),
                            ))
                      ],
                    )
                  ])))
            ])));
  }
}
