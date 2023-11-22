import 'package:drawer_application/screens/home_screen_princial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreenPrinciapl(),
      debugShowCheckedModeBanner: false,
    );
  }
}
