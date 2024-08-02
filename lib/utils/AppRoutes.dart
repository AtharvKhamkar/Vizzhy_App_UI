import 'package:get/get.dart';
import 'package:vizzhy_app/Pages/LoginPage.dart';
import 'package:vizzhy_app/Pages/MyDevicesPage.dart';
import 'package:vizzhy_app/Pages/ProfilePage.dart';
import 'package:vizzhy_app/Pages/SettingPage.dart';
import 'package:vizzhy_app/main.dart';

class AppRoutes {
  AppRoutes._();
  static const initial = '/login';
  static final routes = [
    GetPage(
        name: '/login',
        page: () => const MainBackgroundWrapper(child: LoginPage()),
        transition: Transition.zoom),
    GetPage(
        name: '/profile',
        page: () => MainBackgroundWrapper(child: ProfilePage()),
        transition: Transition.zoom),
    GetPage(
        name: '/setting',
        page: () => const MainBackgroundWrapper(child: SettingPage()),
        transition: Transition.fadeIn),
    GetPage(
        name: '/my-device',
        page: () => const MainBackgroundWrapper(child: MyDevicesPage()),
        transition: Transition.fadeIn),
  ];
}
