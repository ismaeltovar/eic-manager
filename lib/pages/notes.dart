import 'package:flutter/material.dart';

var _noteList = [];

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(),
        ],
      ),
    );
  }
}

class Note extends StatelessWidget {
  String noteTxt = "";

  Note({
    Key key,
    this.noteTxt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Text(noteTxt),
          FloatingActionButton(
              child: Icon(Icons.edit),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EditNotePage()));
              })
        ],
      ),
    );
  }
}

class EditNote {
  String note;

  EditNote({
    this.note,
  });
}

class EditNotePage extends StatelessWidget {
  String newNote;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Note")),
    );
  }

  editNote(String note, String newNote, int index) {
    _noteList[index] = newNote;
  }
}

class AddNotePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add a Note")),
    );
  }
}
