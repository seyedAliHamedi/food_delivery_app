import 'package:flutter/material.dart';
import './screens/home.dart';
import './screens/starter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Roboto'),
    routes: {
      '/home': (context) => const HomePage(),
      '/order': (context) => const OrderPage(),
    },
    initialRoute: '/home',
  ));
}
