
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'food.dart';

class DetailFoodPage extends StatelessWidget{

  Food food;
  DetailFoodPage({this.food});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
       appBar: AppBar(
         title: Text(food.name),
       ),
       body: Container(
         child: Column(
           children: [
             SizedBox(
               width: double.infinity,
               height: 350,
               child: FadeInImage.assetNetwork(
                 placeholder: 'assets/images/loading.gif',
                 image: food.urlImage,
                 fit: BoxFit.fill,
               ),
             ),
             Container(
               margin: EdgeInsets.all(10),
               child: Text(
                 'Ingredient',
                 style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.bold
                 ),
               ),
             ),
             Expanded(child:ListView.builder(
                 itemCount: food.ingredients.length,
                 itemBuilder: (context, index){
                   String ingredient = food.ingredients[index];
                   return ListTile(
                     leading: CircleAvatar(
                       child: Text('${index}'),
                     ),
                     title: Text('$ingredient',
                       style: TextStyle(
                         fontSize: 18,
                         fontFamily: 'Mincho'
                       ),
                     ),
                   );
                 }) )


           ],
         ),
       ),
     );
  }
}