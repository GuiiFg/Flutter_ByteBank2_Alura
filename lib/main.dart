import 'package:flutter/material.dart';
import 'screens/dash_board.dart';
import 'screens/lista_contatos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const DashBoard(),
      //home: const PageConatos(),
    );
  }
}