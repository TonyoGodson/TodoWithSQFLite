import 'package:flutter/material.dart';

import 'screens/notes_list.dart';
import 'screens/input_notes_details.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      home: NotesListScreen(),
    routes: {
      NotesListScreen.routeName: (BuildContext context) => NotesListScreen(),
      InputNotesDetails.routeName: (BuildContext context) =>
          InputNotesDetails(),
    }
  ));
}