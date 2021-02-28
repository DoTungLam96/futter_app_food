

import 'package:flutter/material.dart';

import 'category.dart';
import 'food.dart';

List<Category> FAKE_CATEGORY =  [
  Category(1,'Japanese \'s foods', Colors.redAccent),
  Category(2,'Angeria \'s foods', Colors.teal),
  Category(3,'Chinese \'s foods', Colors.deepOrangeAccent),
  Category(4,'Vietnamese \'s foods', Colors.green),
  Category(5,'Korean \'s foods', Colors.amber),
  Category(10,'Taiwan \'s foods', Colors.black),
  Category(6,'Capuchia \'s foods', Colors.tealAccent),
  Category(7,'Laos ', Colors.redAccent),
  Category(8,'Philipinese' , Colors.brown),
  Category(9,'American \'s foods', Colors.green),

];

var FAKE_FOODS = [
  //array of food's objects
  Food(
      name: "sushi - 寿司",
      urlImage: "https://upload.wikimedia.org/wikipedia/commons/c/cf/Salmon_Sushi.jpg",
      duration: Duration(minutes:25),
      complexity: Complexity.Medium,
      ingredients: ['Sushi-meshi', 'Nori', 'Condiments'],
      categoryId: 1),
  Food(
      name: "Pizza tonda",
      urlImage: "https://www.angelopo.com/filestore/images/pizza-tonda.jpg",
      duration: Duration(minutes:15),
      complexity: Complexity.Hard,
      ingredients: ['Tomato sauce','Fontina cheese','Pepperoni','Onions','Mushrooms','pepperoncini'],
      categoryId: 2),
  Food(
      name: "Makizushi",
      urlImage: "https://upload.wikimedia.org/wikipedia/commons/0/0b/KansaiSushi.jpg",
      complexity: Complexity.Simple,
      duration: Duration(minutes:20),
      categoryId: 1),
  Food(
      name: "Tempura",
      urlImage: "https://upload.wikimedia.org/wikipedia/commons/a/ac/Peixinhos_da_horta.jpg",
      duration: Duration(minutes: 15),
      complexity: Complexity.Simple,
      categoryId: 1),
  Food(
      name: "Neapolitan pizza",
      urlImage: "https://img-global.cpcdn.com/recipes/7f1a5380090f6300/1280x1280sq70/photo.jpg",
      duration: Duration(minutes:20),
      complexity: Complexity.Medium,
      ingredients: ['Fontina cheese','Tomato sauce','Onions','Mushrooms'],
      categoryId: 2),
  Food(
      name: "Sashimi",
      urlImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Sashimi_-_Tokyo_-_Japan.jpg/2880px-Sashimi_-_Tokyo_-_Japan.jpg",
      duration: Duration(hours: 1, minutes: 5),
      complexity: Complexity.Medium,
      categoryId: 1),
  Food(
      name: "Homemade Humburger",
      urlImage: "https://upload.wikimedia.org/wikipedia/commons/5/58/Homemade_hamburger.jpg",
      duration: Duration(minutes: 20),
      complexity: Complexity.Hard,
      categoryId: 3),
  Food(
      name: "Humburger",
      urlImage: "https://images.unsplash.com/photo-1473992243898-fa7525e652a5",
      duration: Duration(minutes: 20),
      complexity: Complexity.Hard,
      categoryId: 3),
];