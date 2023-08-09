import 'package:api_room/constants.dart';
import 'package:api_room/screens/home.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: const Home(),
      theme: ThemeData(primarySwatch: Colors.grey, useMaterial3: true),
    );
  }
}
