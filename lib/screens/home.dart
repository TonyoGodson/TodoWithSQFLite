import 'package:flutter/material.dart';
import 'package:to_do_app/screens/screen_one.dart';
import 'package:to_do_app/screens/screen_three.dart';
import 'package:to_do_app/screens/screen_two.dart';

import 'notes_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;
  final List<Widget> screens = [
    NotesListScreen(),
    ScreenOne(),
    ScreenTwo(),
    ScreenThree()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = NotesListScreen();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
