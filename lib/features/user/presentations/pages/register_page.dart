import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:tekoop/core/themes/colors.dart';
import 'package:tekoop/core/utils/app_state.dart';
import 'package:tekoop/features/user/presentations/controllers/register_controller.dart';
import 'package:tekoop/features/user/presentations/widgets/custom_text_field.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({Key? key}) : super(key: key);

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
          title: Text('Register'.tr),
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
                    keyboardType: TextInputType.text,
                    labelText: 'Username'.tr,
                    validation: controller.usernameIsValid,
                    message: 'Username Invalid'.tr,
                    onChanged: controller.changeUsername,
                  ),
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
                Obx(
                  () => CustomTextField(
                    keyboardType: TextInputType.phone,
                    labelText: 'Phone Number'.tr,
                    validation: controller.phoneIsValid,
                    message: 'Phone Invalid'.tr,
                    onChanged: controller.changePhone,
                  ),
                ),
                Obx(
                  () => CustomTextField(
                      labelText: 'Password'.tr,
                      validation: controller.passwordIsValid,
                      message: 'Password Invalid'.tr,
                      onChanged: controller.changePassword,
                      obscureText: controller.showPassword.value,
                      icon: IconButton(
                        icon: Icon(
                          controller.showPassword.value
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          size: 18,
                          color: whiteColor,
                        ),
                        onPressed: controller.toggleShowPassword,
                      )),
                ),
                Obx(
                  () => CustomTextField(
                    labelText: 'confirm Password'.tr,
                    validation: controller.retypedPasswordIsValid,
                    message: 'Password not match'.tr,
                    onChanged: controller.changeRetypedPassword,
                    obscureText: controller.showConfirmPassword.value,
                    icon: IconButton(
                      icon: Icon(
                        controller.showConfirmPassword.value
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        size: 18,
                        color: whiteColor,
                      ),
                      onPressed: controller.toggleShowConfirmPassword,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
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
                          : controller.formRegisterIsValid
                          ? controller.registerLocal
                          : null,
                      child: controller.appState == AppState.LOADING
                          ? ScalingText(
                              'Registering...'.tr,
                              style: const TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            )
                          : Text(
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
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1.0),
                  child: Text(
                      'register_text'.tr,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                      )),
                ),
                const SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
        resizeToAvoidBottomInset: true, // backgroundColor: bgColor,
      ),
    );
  }
}
