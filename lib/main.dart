// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vizzhy_app/Pages/MyDevicesPage.dart';
import 'package:vizzhy_app/utils/AppColors.dart';
import 'package:vizzhy_app/utils/AppGradient.dart';
import 'package:vizzhy_app/utils/AppRoutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Vizzhy Application',
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
        primaryColorDark: AppColors.primaryColorDark,
        primaryColorLight: AppColors.primaryColorLight,
        scaffoldBackgroundColor: AppColors.backgroundColor,
        appBarTheme: const AppBarTheme(color: AppColors.primaryColor),
        buttonTheme: const ButtonThemeData(
            buttonColor: AppColors.primaryColor,
            textTheme: ButtonTextTheme.primary),
      ),
      home: const MainBackgroundWrapper(
        child: MyDevicesPage(),
      ),
      initialRoute: AppRoutes.initial,
      getPages: AppRoutes.routes,
    );
  }
}

class MainBackgroundWrapper extends StatelessWidget {
  final Widget child;
  const MainBackgroundWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: AppGradient.mainBackground),
      child: child,
    );
  }
}
