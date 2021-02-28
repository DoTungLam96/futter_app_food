import 'dart:math';

class Food {
  int id;
  String name;
  String urlImage;
  Duration duration; //time to finish this food
  Complexity complexity;
  //one foods has many ingredients
  List<String> ingredients = List<String>();
  //reference: 1 Category has many Foods
  int categoryId;
//constructor:
  Food(
      {this.id,
      this.name,
      this.urlImage,
      this.duration,
      this.complexity,
      this.ingredients,
      this.categoryId})
  {
    this.id = Random().nextInt(1000);
  }
}

enum Complexity { Simple, Medium, Hard }
