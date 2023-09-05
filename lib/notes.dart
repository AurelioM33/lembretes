import 'package:flutter/material.dart';

class Notes {
  String title;
  String date;
  String content;

  Notes({required this.title, required this.date, required this.content});

  static List<Notes> getListOfNotes() {
    List<Notes> list = [];
    list.add(
      Notes(
        title: "Primeiro Lembrete",
        date: "05/09/2023",
        content: "Primeira nota digitada nesse campo no app notas",
      ),
    );
    list.add(
      Notes(
        title: "Segundo Lembrete",
        date: "07/09/2023",
        content: "Fazer compras",
      ),
    );
    list.add(
      Notes(
        title: "Terceito Lembrete",
        date: "14/09/2023",
        content: "Levar o dog no veterinario ",
      ),
    );
    list.add(
      Notes(
        title: "Quarto Lembrete",
        date: "15/09/2023",
        content: "aniversario da joana",
      ),
    );
    list.add(
      Notes(
        title: "Quinto Lembrete",
        date: "20/09/2023",
        content: "Levar materiais na obra",
      ),
    );
    list.add(
      Notes(
        title: "Sexto Lembrete",
        date: "22/09/2023",
        content: "Boletos carro , escola e natação",
      ),
    );
    list.add(
      Notes(
        title: "Setimo Lembrete",
        date: "30/09/2023",
        content: "Olhar caixa de correios as 18:00",
      ),
    );
    return list;
  }

  static List<Color> notesColors = [
    Colors.red.shade100,
    Colors.green.shade100,
    Colors.blue.shade100,
    Colors.yellow.shade100,
    Colors.orange.shade100,
    Colors.pink.shade100,
    Colors.blueGrey.shade100,
  ];
}
