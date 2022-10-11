import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tekoop/core/utils/functions.dart';

import '../../../../core/themes/colors.dart';
import '../controllers/home_controller.dart';
import 'grid_view_post_item.dart';

class HomeStepThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final categories =
          HomeController.to.homeSelectedSubCategory.value?.categories;
      return categories.isNotEmpty
          ? DefaultTabController(
              length: categories.length,
              child: Scaffold(
                appBar: AppBar(
                  bottom: TabBar(
                    tabs: categories
                        .map((category) => Text(
                            getCategoryName(category).toUpperCase(),
                            style: TextStyle(color: appBarBorderColor)))
                        .toList(),
                    isScrollable: true,
                  ),
                  backgroundColor: Colors.transparent,
                  toolbarHeight: 22,
                  automaticallyImplyLeading: false,
                  elevation: 0,
                ),
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBarView(
                    children: HomeController.to.posts.fold(
                        (l) => categories
                            .map((category) => Text(
                                getCategoryName(category).toUpperCase(),
                                style: TextStyle(color: appBarBorderColor)))
                            .toList(),
                        (r) => categories
                            .map(
                              (category) => GridView.builder(
                                gridDelegate:
                                    SliverGridDelegateWithMaxCrossAxisExtent(
                                        maxCrossAxisExtent: 200,
                                        childAspectRatio: 100 / 100,
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 5),
                                itemCount:
                                    getPostsByCategory(r, category).length,
                                itemBuilder: (BuildContext ctx, index) =>
                                    GridViewPostItem(
                                        post: getPostsByCategory(
                                            r, category)[index]),
                              ),
                            )
                            .toList()),
                  ),
                ),
              ),
            )
          : HomeController.to.posts.fold(
              (failure) => Center(child: Text(failure.getErrorMessage())),
              (posts) => Column(
                  children: categories
                      .map(
                        (category) => GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  childAspectRatio: 100 / 100,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 5),
                          itemCount: getPostsByCategory(posts, category).length,
                          itemBuilder: (BuildContext ctx, index) =>
                              GridViewPostItem(
                                  post: getPostsByCategory(
                                      posts, category)[index]),
                        ),
                      )
                      .toList()),
            );
    });
  }
}
