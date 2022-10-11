import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/themes/colors.dart';
import '../controllers/home_controller.dart';
import 'grid_view_sub_category_item.dart';

class HomeStepTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          //  padding: EdgeInsets.symmetric(horizontal:6.0),
          decoration:
              BoxDecoration(border: Border.all(width: 0.5, color: greyColor1)),
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(color: appBarBorderColor),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10),
                errorStyle: TextStyle(fontSize: 12),
                labelText: 'SEARCH',
                labelStyle: TextStyle(color: appBarBorderColor, fontSize: 15),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                errorText: true ? null : 'message',
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.search, color: appBarBorderColor)),
            autocorrect: false,
            obscureText: false,
            onChanged: null,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: Obx(() {
            final categories =
                HomeController.to.homeSelectedCategory.value.categories;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100,
                  childAspectRatio: 2 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: categories.length,
              itemBuilder: (BuildContext ctx, index) =>
                  GridViewSubCategoryItem(category: categories[index]),
            );
          }),
        ),
      ],
    );
  }
}
