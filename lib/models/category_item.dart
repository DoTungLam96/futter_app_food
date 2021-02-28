
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_flutters/models/category.dart';
import 'food_page.dart';

class CategoryItem extends StatelessWidget{
  static const String routeName = '/CategoryItem';
  Category _category;
  CategoryItem(this._category);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => FoodPage(category: _category,)
          ));
        //Navigator.pushNamed(context, FoodPage.routeName, arguments: {'category',_category});
      },
      splashColor: Colors.teal,
      child: Container(
        decoration: BoxDecoration(
            color: this._category.color,
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(this._category.content,
                  style: Theme.of(context).textTheme.title,
                ),
              ],
            )
        ),
      ),
    );

  }
}