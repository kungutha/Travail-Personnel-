import 'package:flutter/material.dart';
import 'package:whatsap/view/Appels.dart';

class Appels extends StatefulWidget {
  const Appels({super.key});

  @override
  State<Appels> createState() => _AppelsState();
}

class _AppelsState extends State<Appels> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Text("Les appels sont chiffrés de bout a bout"),
      )
    );
  }
}
