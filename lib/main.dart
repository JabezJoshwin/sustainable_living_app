import 'package:flutter/material.dart';
import 'package:sustainable_living_app/pages/home.dart';
import 'package:sustainable_living_app/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // hides the debug banner
      title: 'Sustainable Living App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Login(), // set Home() as the s. tarting screen
    );
  }
}
