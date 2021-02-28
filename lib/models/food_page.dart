
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_flutters/models/category.dart';
import 'package:food_app_flutters/models/fake_data.dart';
import 'package:food_app_flutters/models/food.dart';
import 'package:transparent_image/transparent_image.dart';

import 'detail_food_page.dart';

class FoodPage extends StatelessWidget{
  Category category;
  FoodPage({this.category});
  @override
  Widget build(BuildContext context) {

    List<Food> listFood = FAKE_FOODS.where((element) =>  element.categoryId == this.category.id ).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${category.content}'
        ),
      ),
      body: Center(
        child: Container(
          child: Center(
            child: listFood.length > 0 ? ListView.builder(
                itemCount: listFood.length,
                itemBuilder: (context, index){
                  Food food = listFood[index];
                  return InkWell(

                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder:
                          (context) => DetailFoodPage(food: food)
                      ));
                    },

                    child: Container(
                        padding: EdgeInsets.all(10),
                        // child: Stack(
                        //   children: [
                        //     Container(
                        //       decoration: BoxDecoration(
                        //         image: DecorationImage(
                        //             fit: BoxFit.cover, image: NetworkImage('${food.urlImage}')),
                        //         borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: SizedBox(
                                width: double.infinity,
                                height: 250,
                                child: FadeInImage.assetNetwork(
                                  placeholder: 'assets/images/loading.gif',
                                  image: food.urlImage,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            Positioned(
                                top: 10,
                                left: 10,
                                child:
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.black45,
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(color: Colors.white,width: 1),
                                  ),

                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.timer,
                                        color: Colors.white,
                                        size:  20,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5,right: 5, bottom: 5),
                                        child: Text(
                                          '${food.duration.inMinutes} minutes',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Mincho',
                                              color: Colors.white
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            ),
                            Positioned(
                                top: 10,
                                right: 10,
                                child:
                                Center(
                                  child:    Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Colors.teal[400],
                                      borderRadius: BorderRadius.all(Radius.circular(5)),
                                    ),

                                    child: Text(
                                      '${food.complexity.toString().split('.').last}',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'Mincho'
                                      ),
                                    ),
                                  ),
                                )
                            ),
                            Positioned(
                                bottom: 10,
                                right: 10,
                                child:
                                Center(
                                  child:    Container(
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Colors.black45,
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    ),

                                    child: Text(
                                      '${food.name}',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontFamily: 'Mincho'
                                      ),
                                    ),
                                  ),
                                )
                            )
                          ],
                        )

                    ),
                  );
                }) :
                Text(
                  'No food found',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: 'Mincho'
                  ),
                )
          ),
        ),
      ),
    );
  }
}