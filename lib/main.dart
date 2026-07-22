                                                                                                                                                                                                                                                                                             import 'package:flutter/material.dart';
import 'package:trabajo/homepage.dart';

void main() {
  runApp(const principal());
}

// ignore: camel_case_types
class principal extends StatelessWidget {
  const principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hoja de Vida',
      home: const HomePage(),
    );
  }
}