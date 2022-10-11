import 'package:flutter/material.dart';
import 'package:tekoop/core/themes/colors.dart';
import 'package:tekoop/core/utils/functions.dart';
import 'package:tekoop/core/utils/urls.dart';
import 'package:tekoop/features/home/data/models/category_model.dart';
import 'package:tekoop/features/home/presentations/controllers/home_controller.dart';
import 'package:tekoop/features/home/presentations/controllers/post_controller.dart';

class ListViewCategoryItem extends StatelessWidget {
  final CategoryModel category;

  const ListViewCategoryItem({Key key, this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Card(
          margin: EdgeInsets.only(top: 10),
          shape: Border.all(color: appBarBorderColor, width: 0.3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 80,
                  child: Image.network(URLs.baseUrl + category.image.url)),
              Text(getCategoryName(category).toUpperCase()),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.arrow_forward_ios_rounded, size: 18),
              SizedBox(
                width: 1,
              ),
            ],
          ),
          //  decoration: BoxDecoration(border:Border.all(color: appBarBorderColor, width:0.5))
        ),
        onTap: () {
          PostController.to.setAddPostSelectedCategory(category);
          HomeController.to.nextAddPostStep();
        });
  }
}
