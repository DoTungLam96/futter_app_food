
import 'package:flutter/cupertino.dart';

class Category{
  int id;
  String content;
  Color color;
  Category(
      @required this.id,
      @required this.content,
      this.color);
}