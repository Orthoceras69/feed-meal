import 'package:feed_meal_app/config/class_palette.dart';
import 'package:flutter/material.dart';
import 'register.dart';
import 'homepage.dart';
import 'package:rive/rive.dart' as rive;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => _LoginPageState();
}

String title = "Login";

final email = TextEditingController();
final password = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/pictos.png"),
                  alignment: Alignment.bottomCenter),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Palette.primary,
                  Palette.primaryGradient,
                ],
              )),
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
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 25.0, right: 25.0),
                    child: TextField(
                      controller: email,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Palette.light,
                          hintStyle: TextStyle(color: Palette.dark),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(style: BorderStyle.none, width: 0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16))),
                          hintText: 'Username/Email'),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 20, left: 25.0, right: 25.0),
                      child: TextField(
                          controller: password,
                          obscureText: true,
                          decoration: const InputDecoration(
                              filled: true,
                              fillColor: Palette.light,
                              hintStyle: TextStyle(color: Palette.dark),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      style: BorderStyle.none, width: 0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16))),
                              hintText: 'Password'))),
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 0, left: 25, right: 25, bottom: 0),
                      child: TextButton(
                        onPressed: () {
                          // ignore: todo
                          // print('forgot password'); // TODO
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => const 'Page'()),
                          // );
                        },
                        child: const Text(
                          "Forgot password ?",
                          style: TextStyle(color: Palette.light),
                        ),
                      )),
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        },
                        child: const Text('Log In'))
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Need an account ?",
                        style: TextStyle(color: Palette.dark),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterPage()),
                            );
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(color: Palette.light),
                          )),
                    ],
                  ),
                ])))
          ]),
        ));
  }
}
