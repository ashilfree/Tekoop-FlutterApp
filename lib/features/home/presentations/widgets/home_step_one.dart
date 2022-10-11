import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/app_state.dart';
import '../../../../core/utils/functions.dart';
import '../controllers/home_controller.dart';
import 'grid_view_category_item.dart';

class HomeStepOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (HomeController.to.appState() == AppState.LOADING) {
        return Center(child: CircularProgressIndicator());
      }
      return HomeController.to.categories.fold(
          (failure) => Center(child: Text(failure.getErrorMessage())),
          (categories) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'help_home_message'.tr,
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 2 / 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20),
                      itemCount: categoriesFirstRanges(categories).length,
                      itemBuilder: (BuildContext ctx, index) =>
                          GridViewCategoryItem(category:categoriesFirstRanges(categories)[index]),
                    ),
                  ),
                ],
              ));
    });
  }
}
