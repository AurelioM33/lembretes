import 'dart:math';

import 'package:bloco_notas/notes.dart';
import 'package:flutter/material.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Minha Anotações"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: GridView(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: gridChildren(),
      ),
    );
  }

  List<Widget> gridChildren() {
    List<Widget> list = [];
    Notes.getListOfNotes().forEach((element) {
      list.add(getNoteCard(element));
    });
    return list;
  }

  Widget getNoteCard(Notes note) {
    // for random colors
    int randomColor = Random().nextInt(Notes.notesColors.length - 1);

    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Notes.notesColors[randomColor],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 4),
          Text(
            note.title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            note.date,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: Text(
              note.content,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
            ),
          ),
        ],
      ),
    );
  }
}
