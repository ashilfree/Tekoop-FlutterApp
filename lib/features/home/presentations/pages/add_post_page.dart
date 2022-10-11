import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tekoop/features/home/presentations/widgets/grid_view_category_item.dart';
import '../widgets/custom_bottom_navbar.dart';

class AddPostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _width = Get.width;
    final _height = Get.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFEFEAF3),
        centerTitle: true,
        title: Text(
          'POST',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF7D529C)),
        ),
        bottom: PreferredSize(
            child: Container(
              color: Color(0xFF7C7A7D),
              height: 0.5,
            ),
            preferredSize: Size.fromHeight(0.5)),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: _width,
        height: _height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('How can we help to find what you are looking for?', style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 2 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: 8,
                itemBuilder: (BuildContext ctx, index) => GridViewCategoryItem(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
