// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      home: const MyHomePage(title: 'Exercise 2 - Abastillas & Unating'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Icon(Icons.menu, size: 40, color: Colors.black),
                ),
                Expanded(
                    flex: 6,
                    child: Text(
                      "News Feed",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                    )),
                Expanded(
                  flex: 2,
                  child: Image(
                      width: 50,
                      height: 50,
                      image: AssetImage('assets/user.png')),
                )
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
                    child: Container(
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: new DecorationImage(
                            image: new AssetImage("assets/background.png"),
                            fit: BoxFit.cover,
                          )),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(20, 60, 20, 30),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Welcome back Jimu! 👋",
                                  style: TextStyle(
                                      fontSize: 22, fontWeight: FontWeight.w500)),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Check out the latest updates",
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w400)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Post(),
                  ),
                  Container(
                    child: Post(),
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
