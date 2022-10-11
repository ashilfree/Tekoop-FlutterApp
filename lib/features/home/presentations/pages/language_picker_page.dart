import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tekoop/core/themes/colors.dart';
import 'package:tekoop/features/home/presentations/controllers/language_picker_controller.dart';
import 'package:tekoop/features/home/presentations/widgets/custom_drop_down.dart';

class LanguagePickerPage extends GetView<LanguagePickerController> {
  const LanguagePickerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: Get.width * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Image.asset('assets/images/logo.png'),
              ),
              Text('choose your language'.tr, style: Get.textTheme.caption),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Obx(
                  () => CustomDropdown(
                    dropdownMenuItemList: controller.itemsLanguageDropdownList,
                    onChanged: controller.setLanguage,
                    value: controller.selectedLanguage.value,
                    isEnabled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text('choose your country'.tr, style: Get.textTheme.caption),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Obx(
                  () => CustomDropdown(
                    dropdownMenuItemList: controller.itemsCountryDropdownList,
                    onChanged: controller.setCountry,
                    value: controller.selectedCountry.value,
                    isEnabled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(4)),
                width: double.infinity,
                child: RaisedButton(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  onPressed: LanguagePickerController.to.saveSettings,
                  child: Text(
                    'Continue'.tr,
                    style: const TextStyle(
                        color: whiteColor, fontWeight: FontWeight.bold),
                  ),
                  color: darkBlueColor,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
