import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tekoop/core/routes/routes.dart';
import 'package:tekoop/features/home/presentations/controllers/home_controller.dart';

class CustomBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 3,
      color: Color(0xFFEFEAF3),
      notchMargin: 4,
      shape: AutomaticNotchedShape(RoundedRectangleBorder(),
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(30)),
        child: Obx(
          () => Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home_outlined,
                  color: HomeController.to.bottomIndexSelected.value == 1
                      ? Color(0xFF8256A2)
                      : Color(0xFF86818A),
                  size: 30,
                ),
                onPressed: () {
                  HomeController.to.bottomIndexSelected.value = 1;
                  Get.offAndToNamed(Routers.home);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.add_circle_outline,
                  color: HomeController.to.bottomIndexSelected.value == 2
                      ? Color(0xFF8256A2)
                      : Color(0xFF86818A),
                  size: 30,
                ),
                onPressed: () {
                  HomeController.to.bottomIndexSelected.value = 2;
                  Get.offAndToNamed(Routers.addPost);
                },
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.ad,
                  color: HomeController.to.bottomIndexSelected.value == 3
                      ? Color(0xFF8256A2)
                      : Color(0xFF86818A),
                  size: 30,
                ),
                onPressed: () {
                  HomeController.to.bottomIndexSelected.value = 3;
                },
              ),
              IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.user,
                  color: HomeController.to.bottomIndexSelected.value == 4
                      ? Color(0xFF8256A2)
                      : Color(0xFF86818A),
                  size: 27,
                ),
                onPressed: () {
                  HomeController.to.bottomIndexSelected.value = 4;
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
