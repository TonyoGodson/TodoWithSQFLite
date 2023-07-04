import 'package:flutter/material.dart';

class NotesListScreen extends StatefulWidget {
  const NotesListScreen({Key? key}) : super(key: key);

  @override
  State<NotesListScreen> createState() => _NotesListScreenState();
}

class _NotesListScreenState extends State<NotesListScreen> {
  int count = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notes"),),
      floatingActionButton: FloatingActionButton(onPressed: () {
        debugPrint("FAB Clicked");
      },
      child: Icon(Icons.add),),
      body: getNotesListView(),
    );
  }

  ListView getNotesListView(){
    TextStyle? titleStyle = Theme.of(context).textTheme.titleSmall;
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int positon){
          return Card(
            elevation: 6.0,
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.yellow,
                  child: const Icon(
                      Icons.play_arrow_outlined)),
              title: Text("Title", style: titleStyle),
              subtitle: Text("Subtitle"),
              trailing: Icon(Icons.delete),
              onTap: () {
                debugPrint("ListItem Clicked");
              },
            ),
          );
        },
      );
  }
}
