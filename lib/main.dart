import 'package:flutter/material.dart';
import 'package:viacep2/globals.dart';
import 'package:viacep2/src/views/inicial_view.dart';

import 'src/views/main_view.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baixar video',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:  Inicial(),
      
    );
  }
}
