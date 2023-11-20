import 'package:drawer_application/screens/home_screen.dart';
import 'package:flutter/material.dart';
class HomeScreenPrinciapl extends StatelessWidget {
  const HomeScreenPrinciapl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilledButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
        }, child: Text("data")),
      ),
    );
  }
}