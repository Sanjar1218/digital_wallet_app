import 'package:flutter/material.dart';
import 'package:digital_wallet_app/screens/home.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
    },
  ));
}
