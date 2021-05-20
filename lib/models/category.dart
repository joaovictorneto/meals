import 'package:flutter/material.dart';

class Category {
  //Atributos
  final String id;
  final String title;
  final Color color;

  //Construtor com const p/ performance
  const Category({
    @required this.id,
    @required this.title,
    this.color = Colors.orange,
  });
}
