import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tekoop/core/utils/urls.dart';

import '../../../../core/themes/colors.dart';
import '../../../../core/utils/functions.dart';
import '../controllers/home_controller.dart';
import '../widgets/grid_view_post_item_may_like.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final post = HomeController.to.selectedPost.value;
    final _width = Get.width;
    final _height = Get.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: appBarBackgroundColor,
        centerTitle: true,
        title: Text(
          post.title.toUpperCase(),
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: darkPurpleColor),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.5),
          child: Container(
            color: appBarBorderColor,
            height: 0.5,
          ),
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: appBarBorderColor, width: 0.5)),
          color: appBarBackgroundColor,
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    '${post.price} KWD',
                    style: TextStyle(
                        color: blueColor,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      border: Border.all(color: purpleColor2, width: 1.0),
                      borderRadius: BorderRadius.circular(4))),
              Container(
                  // padding: EdgeInsets.symmetric(vertical: 12),
                  child: FlatButton.icon(
                    icon: Icon(Icons.phone_outlined, color: blueColor),
                    label: Text('Call now',
                        style: TextStyle(
                            color: greyColor3,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    onPressed: () => makePhoneCall('tel:${post.phone}'),
                  ),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      border: Border.all(color: purpleColor2, width: 1.0),
                      borderRadius: BorderRadius.circular(4))),
            ]),
      ),
      body: Container(
        width: _width,
        height: _height,
        color: greyColor4,
        padding: EdgeInsets.all(5),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: whiteColor,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                            child:
                                Image.network(URLs.baseUrl + post.images.first.url)),
                        Positioned(
                            child: Container(
                          color: blueColor.withOpacity(0.43),
                          padding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                          child: Text(getCategoryName(post.category).toUpperCase(),
                              style: TextStyle(color: whiteColor)),
                        )),
                        Positioned(
                            right: 0.0,
                            child: Image.asset('assets/images/gallery.png',
                                width: 40))
                      ],
                    ),
                    Container(
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(post.title.capitalizeFirst,
                                        style: TextStyle(color: greyColor6)),
                                    RichText(
                                      text: TextSpan(children: [
                                        WidgetSpan(
                                            child: Icon(
                                          Icons.visibility,
                                          size: 18,
                                          color: blueColor,
                                        )),
                                        TextSpan(
                                            text: '35',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16)),
                                      ]),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('By ${post.owner.username.capitalizeFirst}.',
                                        style: TextStyle(
                                            color: appBarBorderColor,
                                            fontSize: 10)),
                                    Text('${post.createdAt}',
                                        style: TextStyle(
                                            color: greyColor6, fontSize: 12)),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: greyColor1)),
                    ),
                    Row(
                      children: [
                        //   Expanded(flex:1, child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.favorite, size:15), label: FittedBox(child: Text('Like')))),
                        Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: FittedBox(
                                child: FlatButton.icon(
                                    onPressed: () {},
                                    icon: Icon(Icons.favorite_outline,
                                        size: 32, color: blueColor),
                                    label: Text('Like',
                                        style: TextStyle(fontSize: 14))))),
                        Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: FittedBox(
                                child: FlatButton.icon(
                                    onPressed: () {},
                                    icon: Icon(Icons.comment_outlined,
                                        size: 32, color: blueColor),
                                    label: Text('Comment',
                                        style: TextStyle(fontSize: 14))))),
                        Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: FittedBox(
                                child: FlatButton.icon(
                                    onPressed: () {},
                                    icon: Icon(Icons.share_outlined,
                                        size: 32, color: blueColor),
                                    label: Text('Share',
                                        style: TextStyle(fontSize: 14))))),
                        Flexible(
                            fit: FlexFit.tight,
                            flex: 1,
                            child: FittedBox(
                                child: FlatButton.icon(
                                    onPressed: () {},
                                    icon: Icon(Icons.report_problem_outlined,
                                        size: 32, color: blueColor),
                                    label: Text('Report',
                                        style: TextStyle(fontSize: 14))))),
                        //  Flexible(fit: FlexFit.tight, flex:1, child: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.share_outlined, size: 32, color: blueColor), label: Text('Share', style: TextStyle(fontSize: 14)))),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.5, color: greyColor1)),
                    ),
                    Container(
                      height: 200,
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        post.description,
                        maxLines: 10,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Text(
                    'You may also like',
                    textAlign: TextAlign.left,
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  GridViewPostItemMayLike(),
                  GridViewPostItemMayLike(),
                  GridViewPostItemMayLike(),
                ]),
              ),
              SizedBox(height: 150)
            ],
          ),
        ),
      ),
    );
  }
}
