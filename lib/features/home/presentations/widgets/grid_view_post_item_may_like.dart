import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tekoop/core/routes/routes.dart';
import 'package:tekoop/core/themes/colors.dart';

class GridViewPostItemMayLike extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: 200,
        decoration: BoxDecoration(border: Border.all(color: greyColor1)),
        child: Column(
          children: [
            Container(
              child: Image.asset('assets/images/post_may_like.png', fit: BoxFit.cover,),
            ),
            Container(
              color: whiteColor,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                      height: 45,
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/images/post_logo.png',
                        scale: 1.0,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: greyColor5,
                            width: 0.5,
                          ),
                          borderRadius: BorderRadius.circular(30))),
                  SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      children: [
                        Text('House For Rent',
                            style: TextStyle(color: greyColor6)),
                        Text('By Tekoop Co.',
                            style: TextStyle(
                                color: appBarBorderColor, fontSize: 10))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      onTap: () => Get.toNamed(Routers.detailPost),
    );
  }
}
