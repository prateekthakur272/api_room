import 'package:api_room/constants.dart';
import 'package:api_room/dashboard.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: const Dashboard(),
      theme: ThemeData(primarySwatch: Colors.grey, useMaterial3: true),
    );
  }
}
