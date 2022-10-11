import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tekoop/features/home/presentations/widgets/home_step_three.dart';

import '../../../../core/themes/colors.dart';
import '../controllers/home_controller.dart';
import '../widgets/add_post_step_one.dart';
import '../widgets/add_post_step_two.dart';
import '../widgets/home_step_one.dart';
import '../widgets/home_step_two.dart';

class HomePage extends GetView<HomeController> {
  static List<Widget> _widgetOptions = <Widget>[
    Obx(
      () => (HomeController.to.homeStep.value == 3)
          ? HomeStepThree()
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: Get.width,
              height: Get.height,
              child: (HomeController.to.homeStep.value == 1)
                  ? HomeStepOne()
                  : HomeStepTwo()),
    ),
    Obx(
      () => Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: Get.width,
        height: Get.height,
        child: (HomeController.to.addPostStep.value == 1)
            ? AddPostStepOne()
            : AddPostStepTwo(),
      ),
    ),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 3: School',
    ),
  ];

  static List<Widget> _titles = <Widget>[
    Text(
      'Home'.tr.toUpperCase(),
      style: TextStyle(
          fontSize: 20.0, fontWeight: FontWeight.bold, color: darkPurpleColor),
    ),
    Text(
      'Post'.tr.toUpperCase(),
      style: TextStyle(
          fontSize: 20.0, fontWeight: FontWeight.bold, color: darkPurpleColor),
    ),
    Text(
      'Ads'.tr.toUpperCase(),
      style: TextStyle(
          fontSize: 20.0, fontWeight: FontWeight.bold, color: darkPurpleColor),
    ),
    Text(
      'Account'.tr.toUpperCase(),
      style: TextStyle(
          fontSize: 20.0, fontWeight: FontWeight.bold, color: darkPurpleColor),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: appBarBackgroundColor,
        centerTitle: true,
        title: Obx(
          () => _titles.elementAt(controller.bottomIndexSelected.value),
        ),
        bottom: PreferredSize(
           preferredSize: Size.fromHeight(0.5),
              child:Container(
                      color: appBarBorderColor,
                      height: 0.5,
                    ),),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
          color: appBarBorderColor,
          width: 0.5,
        ))),
        child: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: appBarBackgroundColor.withOpacity(0.8)),
          child: Obx(
            () => BottomNavigationBar(
              unselectedItemColor: unselectedItemColor,
              selectedItemColor: selectedItemColor,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined, size: 32),
                  label: 'Home'.tr,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_circle_outline, size: 32),
                  label: 'Add Post'.tr,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.ad_units, size: 32),
                  label: 'Ads'.tr,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined, size: 32),
                  label: 'Account'.tr,
                ),
              ],
              currentIndex: controller.bottomIndexSelected.value,
              onTap: controller.onItemTapped,
            ),
          ),
        ),
      ),
      body: Obx(
          () => _widgetOptions.elementAt(controller.bottomIndexSelected.value)),
    );
  }
}
