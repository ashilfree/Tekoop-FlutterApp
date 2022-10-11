import 'package:flutter/material.dart';
import 'package:tekoop/core/themes/colors.dart';
import 'package:tekoop/core/utils/functions.dart';
import 'package:tekoop/core/utils/urls.dart';
import 'package:tekoop/features/home/data/models/category_model.dart';
import 'package:tekoop/features/home/presentations/controllers/home_controller.dart';

class GridViewCategoryItem extends StatelessWidget {
  final CategoryModel category;

  const GridViewCategoryItem({Key key, this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Column(
          children: [
            Container(
              child: Image.network(URLs.baseUrl + category.image.url),
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Color(0xFFCCCCCC))),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 5,
                    child: FittedBox(
                      child: Text(getCategoryName(category).toUpperCase(),
                          style: TextStyle(fontSize: 13)),
                    ),
                  ),
                  Expanded(flex:1, child: Container()),
                  Expanded(
                    flex: 3,
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: '3900',
                            style:
                                TextStyle(color: Colors.black, fontSize: 12)),
                        WidgetSpan(
                            child: Icon(
                          Icons.volume_up,
                          size: 14,
                          color: greyColor,
                        )),
                      ]),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      onTap: () {
        HomeController.to.setHomeSelectedCategory(category);
        HomeController.to.homeStepTwo();
      },
    );
  }
}
