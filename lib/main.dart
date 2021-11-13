import 'package:fimber/fimber.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/restaurant_app.dart';
import 'package:get/get.dart';
import 'package:restaurant/utils/services/storage_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => StorageService.init(), permanent: true);
  if (kDebugMode) {
    Fimber.plantTree(DebugTree());
  }
  runApp(const RestaurantApp());
}
