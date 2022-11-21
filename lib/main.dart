import 'package:flutter/material.dart';
import 'constans.dart';
import 'screens/listScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rodas Luis',
      theme: ThemeData(
        primarySwatch: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:
          const ListScreen(title: 'Examen Movil - Rodas Moltalvan Luis Netsar'),
    );
  }
}
