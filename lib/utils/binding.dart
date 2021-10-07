import 'package:get/get.dart';

import 'langs/app_language_controller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(AppSettingsController());

    // Get.put(CheckOutViewModel());

    // Get.lazyPut<AuthViewModel>(() => AuthViewModel());
    // Get.lazyPut<SupCategoryViewModel>(() => SupCategoryViewModel());
  }
}
