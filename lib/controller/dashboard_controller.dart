// import 'package:get/get.dart';
//
// class DashboardController extends GetxController {
//   var tabIndex = 0;
//
//   void updateIndex(int index){
//     tabIndex =index;
//     update();
//   }
// }
import 'package:get/get.dart';

class DashboardController extends GetxController {
  int tabIndex = 0;
  bool isSearching = false;

  void updateIndex(int index) {
    tabIndex = index;
    isSearching = false; // Reset search mode when switching tabs
    update();
  }

  void toggleSearch() {
    isSearching = !isSearching;
    update();
  }
}
