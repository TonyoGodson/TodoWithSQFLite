import 'package:flutter/material.dart';
import 'package:to_do_app/screens/input_notes_details.dart';
import 'package:to_do_app/screens/screen_one.dart';
import 'package:to_do_app/screens/screen_three.dart';
import 'package:to_do_app/screens/screen_two.dart';

import 'notes_list.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;
  final List<Widget> screens = [
    InputNotesDetails(),
    ScreenOne(),
    ScreenTwo(),
    ScreenThree()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = InputNotesDetails();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 0,
        child: Container(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(0),
                    width: 100.0,
                    // color: Colors.red,
                    child: MaterialButton(
                      minWidth: 40.0,
                      onPressed: (){
                        setState(() {
                          currentScreen = InputNotesDetails();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home_filled,
                            color: currentTab == 0 ? Colors.blue : Colors.grey,
                          ),
                          Text("Input Notes",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: currentTab == 0 ? Colors.blue : Colors.grey,))
                        ],),
                    ),
                  ),
                  Container(
                    width: 80.0,
                    // color: Colors.green,
                    child: MaterialButton(
                      minWidth: 40.0,
                      onPressed: (){
                        setState(() {
                          currentScreen = ScreenOne();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.group_rounded,
                            color: currentTab == 1 ? Colors.blue : Colors.grey,
                          ),
                          Text("Screen One",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: currentTab == 1 ? Colors.blue : Colors.grey,))
                        ],),
                    ),
                  )
                ],),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 80.0,
                    // color: Colors.yellow,
                    child: MaterialButton(
                      minWidth: 40.0,
                      onPressed: (){
                        setState(() {
                          currentScreen = ScreenTwo();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.groups_rounded,
                            color: currentTab == 2 ? Colors.blue : Colors.grey,
                          ),
                          Text("Screen Two",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: currentTab == 2 ? Colors.blue : Colors.grey,))
                        ],),
                    ),
                  ),
                  Container(
                    width: 80.0,
                    // color: Colors.purple,
                    child: MaterialButton(
                      minWidth: 40.0,
                      onPressed: (){
                        setState(() {
                          currentScreen = ScreenThree();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.grid_view_rounded,
                            color: currentTab == 3 ? Colors.blue : Colors.grey,
                          ),
                          Text("Screen Three",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: currentTab == 3 ? Colors.blue : Colors.grey,))
                        ],),
                    ),
                  )
                ],)
            ],),
        ),
      ),
    );;
  }
}
