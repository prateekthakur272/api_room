import 'package:api_room/widgets/sidebar_split_view.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SidebarSplitView(sidebar: Container(), content: Container()),
    );
  }
}
