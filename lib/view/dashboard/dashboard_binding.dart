import 'package:get/get.dart';
import 'package:tugas_magang/controller/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(DashboardController());
  }

}