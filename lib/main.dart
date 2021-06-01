import 'package:flutter/material.dart';
import 'package:home/Tanah/Tanah1.dart';
import 'package:home/Bangunan/Bangunan1.dart';
import 'package:home/Dashboard.dart';
import 'Login/Login.dart';
import 'Login/Register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Go Asin NTB",
    initialRoute: "/",
    routes: {
      "/": (context) => Login(),
      Register.routeName: (context) => Register(),
    },
  ));
}
