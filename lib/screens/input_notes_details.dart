import 'package:flutter/material.dart';
import 'package:to_do_app/screens/notes_list.dart';

class InputNotesDetails extends StatefulWidget {
  static const routeName = '/input_notes_details';
  const InputNotesDetails({Key? key}) : super(key: key);

  @override
  State<InputNotesDetails> createState() => _InputNotesDetailsState();
}

class _InputNotesDetailsState extends State<InputNotesDetails> {
  static var _priorities = ['High', 'Low'];
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pushNamedAndRemoveUntil(NotesListScreen.routeName, (route) => false);
        }, icon: Icon(Icons.arrow_back_ios)),
        title: Text("Input Notes"),
      ),
      body: notesBody(),
    );
  }

  Container notesBody(){
    TextStyle? textStyle =  Theme.of(context).textTheme.titleMedium;
    return Container(
      padding: EdgeInsets.all(15.0),
      child: ListView(
        children: [
          DropdownButton(items: _priorities.map((String dropDownStringItem) {
             return DropdownMenuItem<String>(
               value: dropDownStringItem,
               child: Text(dropDownStringItem)
             );
          }).toList(),
              style: textStyle,
              value: "Low",
              onChanged: (valueSelectedByUser){
            setState(() {
                  debugPrint("User selected $valueSelectedByUser");
            });
              }
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: titleController,
            decoration: InputDecoration(
              labelText: "Title",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: descriptionController,
              decoration: InputDecoration(
                  labelText: "Description",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  )
              )
          ),
          SizedBox(height: 20),
          Row(children: [
            Expanded(
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text("Save", textScaleFactor: 1.2,)),
            ),
            SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text("Delete", textScaleFactor: 1.2,)),
            ),
          ],)
        ],
      ),
    );
  }
}
