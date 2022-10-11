import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tekoop/core/themes/colors.dart';
import 'package:tekoop/features/user/presentations/controllers/social_auth_controller.dart';

class SocialAuthPage extends GetView<SocialAuthController> {
  const SocialAuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
                  image: ExactAssetImage('assets/images/background.png'),
                  fit: BoxFit.cover,
                ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0x00000000),
          elevation: 0.0,
          actions: [
            FlatButton(
              onPressed: controller.navigationToLoginPage,
              child: Text(
                'Login'.tr,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,),
              ),
            ),
          ],
        ),
        body: Center(
          child: SizedBox(
            width: Get.width * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal:40.0),
                  child: Image.asset('assets/images/white_logo.png'),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  color: Colors.white,
                  width: Get.width,
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.facebookF,
                          color: registerPurpleColor,
                          size: 17,
                        ),
                        Text(
                          'Login with Facebook'.tr,
                          style: TextStyle(
                              color: registerPurpleColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    onTap: SocialAuthController.to.loginWithFB,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  color: Colors.white,
                  width: Get.width,
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.google,
                          color: registerPurpleColor,
                          size: 17,
                        ),
                        Text(
                          'Login with Google'.tr,
                          style: TextStyle(
                              color: registerPurpleColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    onTap: SocialAuthController.to.googleSignInAccount,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.transparent,
                      border: Border.all(color: whiteColor, width: 1.5)),
                  width: double.infinity,
                  child: FlatButton(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    onPressed: controller.navigationToRegisterPage,
                    child: Text(
                      'Register'.tr,
                      style: const TextStyle(
                          color: whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    color: Colors.transparent,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1.0),
                  child: Text(
                      'social_auth_text'.tr,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize:11,
                        color: Colors.white,
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                  color: Colors.white,
                  child: InkWell(
                    child: Text(
                      'Skip & Continue'.tr,
                      style: TextStyle(
                          color: registerPurpleColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: SocialAuthController.to.navigationToHomePage,
                  ),
                ),
              ],
            ),
          ),
        ),
        resizeToAvoidBottomInset: false, // backgroundColor: bgColor,
      ),
    );
  }
}
