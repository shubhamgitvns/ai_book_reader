import 'package:ai_book_raeder/utilty/app_routes.dart';
import 'package:ai_book_raeder/utilty/route_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      title: "IQ100",

      theme: AppTheme.lightTheme,

      initialRoute: RouteNames.splash,

      getPages: AppRoutes.routes,
    );
  }
}
