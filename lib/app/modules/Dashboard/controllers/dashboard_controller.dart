import 'package:get/get.dart';
import 'package:ogapps_getx/app/modules/Dashboard/views/chat_view.dart';
import 'package:ogapps_getx/app/modules/Dashboard/views/settings_view.dart';

class DashboardController extends GetxController {
  var indexScreen = 0.obs;
  var indexMessage = 0.obs;

  final screens = [
    new ChatView(),
    new SettingsView(),
  ];

  @override
  void onInit() {
    super.onInit();
  }

  changeScreenIndex(int index) {
    indexScreen.value = index;
    update();
  }
}
