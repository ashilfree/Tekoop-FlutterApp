import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tekoop/core/routes/routes.dart';
import 'package:tekoop/core/stores/auth_store.dart';

import '../../../../core/utils/app_state.dart';
import '../../../../core/utils/functions.dart';
import '../controllers/home_controller.dart';
import 'list_view_category_item.dart';

class AddPostStepOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (HomeController.to.appState() == AppState.LOADING) {
        return Center(child: CircularProgressIndicator());
      }
      return Stack(
        children: [
          HomeController.to.categories.fold(
              (failure) => Center(child: Text(failure.getErrorMessage())),
              (categories) => ListView.builder(
                    itemCount: categoriesFirstRanges(categories).length,
                    itemBuilder: (BuildContext ctx, index) =>
                        ListViewCategoryItem(
                            category: categoriesFirstRanges(categories)[index]),
                  )),
          if (AuthStore.to.token == null)
          Container(
            margin: EdgeInsets.only(top: 10, bottom:75),
           height: double.infinity,
            color: Colors.black54,
            child: Center(
              child: RaisedButton(onPressed: () => Get.toNamed(Routers.social_auth), child: Text('PLZ Login'),),
            ),
          )
        ],
      );
    });
  }
}
