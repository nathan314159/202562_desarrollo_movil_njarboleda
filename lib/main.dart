import 'package:flutter/material.dart';
import 'registro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Parcial PUCETEC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RegistroPage(), // 👈 ENLACE
    );
  }
}
