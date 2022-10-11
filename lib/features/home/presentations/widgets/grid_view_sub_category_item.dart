import 'package:flutter/material.dart';
import 'package:tekoop/core/utils/functions.dart';
import 'package:tekoop/core/utils/urls.dart';
import 'package:tekoop/features/home/data/models/category_model.dart';

import '../controllers/home_controller.dart';

class GridViewSubCategoryItem extends StatelessWidget {
  final CategoryModel category;

  const GridViewSubCategoryItem({Key key, this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          child: Column(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image.network(URLs.baseUrl + category.image.url,
                      width: 70, height: 70, fit: BoxFit.cover),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                child: FittedBox(
                  child: Text(getCategoryName(category).toUpperCase(),
                      style: TextStyle(fontSize: 13)),
                ),
              )
            ],
          ),
        ),
        onTap: () {
          HomeController.to.setHomeSelectedSubCategory(category);
          HomeController.to.homeStepThree();
        });
  }
}
