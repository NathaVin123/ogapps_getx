import 'package:get/get.dart';

import 'package:ogapps_getx/app/modules/Dashboard/bindings/dashboard_binding.dart';
import 'package:ogapps_getx/app/modules/Dashboard/views/dashboard_view.dart';
import 'package:ogapps_getx/app/modules/Login/bindings/login_binding.dart';
import 'package:ogapps_getx/app/modules/Login/views/login_view.dart';
import 'package:ogapps_getx/app/modules/Register/bindings/register_binding.dart';
import 'package:ogapps_getx/app/modules/Register/views/register_view.dart';
import 'package:ogapps_getx/app/modules/Splash/bindings/splash_binding.dart';
import 'package:ogapps_getx/app/modules/Splash/views/splash_view.dart';

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
  ];
}
