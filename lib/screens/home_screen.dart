import 'package:drawer_application/screens/primary_screen.dart';
import 'package:drawer_application/screens/second_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerPersonal(),
      appBar: AppBar(
        title: const Center(child: Text("DRAWER")),
      ),
        body: const Center(
          child: Text('Hello World!'),
        ),
      );
  }
}

class NavigationDrawerPersonal extends StatefulWidget {
  const NavigationDrawerPersonal({
    super.key,
  });

  @override
  State<NavigationDrawerPersonal> createState() => _NavigationDrawerPersonalState();
}

class _NavigationDrawerPersonalState extends State<NavigationDrawerPersonal> {
  int navIndex=0;

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: navIndex,
      onDestinationSelected: (value) {
        setState(() {
          navIndex=value;
        });
        Navigator.pop(context);
        if(value==0){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const PrimaryScreen()));
        }
        if(value==1){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen()));
        }
      },
      children: const [
        NavigationDrawerDestination(icon: Icon(Icons.add), label: Text("PRIMERO")),
        NavigationDrawerDestination(icon: Icon(Icons.add), label: Text("SEGUNDO"))
      ],
    );
  }
}
