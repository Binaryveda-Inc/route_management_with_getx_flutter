import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'manager/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RouteManager.initial, // Set the initial route
      getPages: RouteManager.getPages(), // Define the routes
    );
  }
}
