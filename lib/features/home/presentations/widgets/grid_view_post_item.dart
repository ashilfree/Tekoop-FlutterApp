import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tekoop/core/utils/functions.dart';
import 'package:tekoop/features/home/presentations/controllers/home_controller.dart';

import '../../../../core/routes/routes.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/utils/urls.dart';
import '../../data/models/post_model.dart';

class GridViewPostItem extends StatelessWidget {
  final PostModel post;

  const GridViewPostItem({Key key, this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Column(
          children: [
            Container(
              child: Image.network(URLs.baseUrl + post.images.first.url,
                  height: 100, fit: BoxFit.fitWidth),
            ),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Color(0xFFCCCCCC))),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                            child: Text(
                                getCategoryName(post.category).toUpperCase(),
                                style: TextStyle(fontSize: 12))),
                        Text('${post.price} DA',
                            style: TextStyle(fontSize: 13, color: blueColor)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        FittedBox(
                            child: Text('31/05/2019',
                                style: TextStyle(fontSize: 13))),
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: '35',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12)),
                            WidgetSpan(
                                child: Icon(
                              Icons.visibility_outlined,
                              size: 14,
                              color: blueColor,
                            )),
                          ]),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      onTap: () {
        HomeController.to.setSelectedPost(post);
        Get.toNamed(Routers.detailPost);
      },
    );
  }
}
