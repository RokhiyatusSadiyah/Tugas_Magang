import 'package:get/get.dart';
import 'package:tugas_magang/route/app_route.dart';
import 'package:tugas_magang/view/dashboard/dashboard_binding.dart';
import '../view/dashboard/dashboard_screen.dart';

class AppPege {
  static var list = [
    GetPage(
        name: AppRoute.dashboard,
        page: () => const DashboardScreen(),
        binding: DashboardBinding()
    )
  ];
}