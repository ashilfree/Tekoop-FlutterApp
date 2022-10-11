import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:progress_indicators/progress_indicators.dart';

import '../../../../core/themes/colors.dart';
import '../../../../core/utils/app_state.dart';
import '../controllers/forget_password_controller.dart';
import '../widgets/custom_text_field.dart';

class ForgetPasswordPage extends GetView<ForgetPasswordController> {
  const ForgetPasswordPage({Key? key}) : super(key: key);

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
          title: Text('Forget Password'.tr),
          leading: IconButton(
              icon: const FaIcon(Icons.arrow_back_sharp), onPressed: Get.back),
        ),
        body: Center(
          child: Container(
            height: Get.height,
            width: Get.width * 0.8,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
                  child: Image.asset('assets/images/white_logo.png'),
                ),
                Obx(
                  () => CustomTextField(
                    keyboardType: TextInputType.emailAddress,
                    labelText: 'Email'.tr,
                    validation: controller.emailIsValid,
                    message: 'Email Invalid'.tr,
                    onChanged: controller.changeEmail,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Obx(
                  () => AnimatedContainer(
                    decoration: BoxDecoration(
                        borderRadius: controller.appState == AppState.LOADING
                            ? BorderRadius.circular(30)
                            : BorderRadius.circular(4),
                        color: Colors.transparent,
                        border: Border.all(color: whiteColor, width: 1.5)),
                    width: 50,
                    duration: const Duration(seconds: 1),
                    child: FlatButton(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      onPressed:controller.appState == AppState.LOADING
                          ? null
                          : controller.formForgetPasswordIsValid
                          ? controller.forgetPassword
                          : null,
                      child: controller.appState == AppState.LOADING
                          ? ScalingText(
                              'Submitting...'.tr,
                              style: const TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            )
                          : Text(
                              'Submit'.tr,
                              style: const TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                      color: Colors.transparent,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        resizeToAvoidBottomInset: true, // backgroundColor: bgColor,
      ),
    );
  }
}
