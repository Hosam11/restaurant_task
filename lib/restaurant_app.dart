import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:restaurant/constants/strings.dart';
import 'package:restaurant/routes.dart';

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: routes,
      title: appName,
      initialRoute: loginScreen,
      scrollBehavior: MyCustomScrollBehavior(),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.unknown,
      };
}
