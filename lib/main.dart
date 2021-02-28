import 'package:flutter/material.dart';
import 'package:food_app_flutters/category_page.dart';
import 'package:food_app_flutters/models/food_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'AppFood',
    theme: ThemeData(
      primarySwatch: Colors.teal,
      textTheme: ThemeData.light().textTheme.copyWith(
        body1: TextStyle(
          color: Color.fromRGBO(20, 52,52,1)
        ),
        title: TextStyle(
          fontSize: 15,
          color: Colors.white,
          fontFamily: 'Mincho'
        )
      )
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
       appBar: AppBar(
         centerTitle: true,
         title: Text(
           'Food app',
           style: TextStyle(
             color: Colors.white,
             fontWeight: FontWeight.bold,
             fontSize: 18,
               fontFamily: 'Mincho'
           ),
         ),
       ),
       body: SafeArea(
         child: Container(
           margin: EdgeInsets.all(10),
           child: CategoryPage(),
         ),
       ),
     );
  }
}



