import 'package:flutter/material.dart';
import 'package:uas_pemmob/Auth/auth.dart';
import "./menu.dart" as home;
import './Auth/auth1.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(new MaterialApp(
    title: "Toko Aksesoris Terbaik",
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Auth(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Toko Aksesoris",
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        home: LoginPage(),
      ),
    );
  }
}