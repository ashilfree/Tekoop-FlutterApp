import 'package:get/get.dart';
import 'package:tekoop/features/home/presentations/controllers/language_picker_controller.dart';


class LanguagePickerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LanguagePickerController>(() => LanguagePickerController());
  }
}
