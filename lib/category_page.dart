
import 'package:flutter/cupertino.dart';
import 'package:food_app_flutters/models/fake_data.dart';
import 'package:food_app_flutters/models/category_item.dart';

class CategoryPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300, // chieu rong maximum = 300
          childAspectRatio: 3/2, // ti le chieu rong va cao width/height = 3/2
          mainAxisSpacing: 10, // do rong giua cac spacing theo chieu doc
          crossAxisSpacing: 10 // do rong giua cac spacing theo chieu ngang
    ),
    children: FAKE_CATEGORY.map((e) => CategoryItem(e)).toList() ,
    );
  }

}