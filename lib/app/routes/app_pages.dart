import 'package:get/get.dart';

import 'package:ogapps_getx/app/modules/Call/bindings/call_binding.dart';
import 'package:ogapps_getx/app/modules/Call/views/call_view.dart';
import 'package:ogapps_getx/app/modules/Chat/bindings/chat_binding.dart';
import 'package:ogapps_getx/app/modules/Chat/views/chat_view.dart';
import 'package:ogapps_getx/app/modules/Contact_Detail/bindings/contact_detail_binding.dart';
import 'package:ogapps_getx/app/modules/Contact_Detail/views/contact_detail_view.dart';
import 'package:ogapps_getx/app/modules/Dashboard/bindings/dashboard_binding.dart';
import 'package:ogapps_getx/app/modules/Dashboard/views/dashboard_view.dart';
import 'package:ogapps_getx/app/modules/Login/bindings/login_binding.dart';
import 'package:ogapps_getx/app/modules/Login/views/login_view.dart';
import 'package:ogapps_getx/app/modules/Register/bindings/register_binding.dart';
import 'package:ogapps_getx/app/modules/Register/views/register_view.dart';
import 'package:ogapps_getx/app/modules/Splash/bindings/splash_binding.dart';
import 'package:ogapps_getx/app/modules/Splash/views/splash_view.dart';
import 'package:ogapps_getx/app/modules/Video_Call/bindings/video_call_binding.dart';
import 'package:ogapps_getx/app/modules/Video_Call/views/video_call_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT_DETAIL,
      page: () => ContactDetailView(),
      binding: ContactDetailBinding(),
    ),
    GetPage(
      name: _Paths.CALL,
      page: () => CallView(),
      binding: CallBinding(),
    ),
    GetPage(
      name: _Paths.VIDEO_CALL,
      page: () => VideoCallView(),
      binding: VideoCallBinding(),
    ),
    // GetPage(
    //   name: _Paths.SEARCH,
    //   page: () => SearchView(),
    //   binding: SearchBinding(),
    // ),
  ];
}
