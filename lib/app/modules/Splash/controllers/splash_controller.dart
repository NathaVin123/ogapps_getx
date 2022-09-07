import 'package:get/get.dart';
import 'package:ogapps_getx/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 2), () => Get.offAllNamed(Routes.LOGIN));
  }
}
