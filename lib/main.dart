import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_magang/route/app_page.dart';
import 'package:tugas_magang/route/app_route.dart';
import 'package:tugas_magang/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPege.list,
      initialRoute: AppRoute.dashboard,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
    );
  }
}
