// import 'package:flutter/material.dart';
// import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
// import 'package:get/get.dart';
// import 'package:tugas_magang/controller/dashboard_controller.dart';
// import 'package:tugas_magang/view/home/home_screen.dart';
//
// class DashboardScreen extends StatelessWidget {
//   const DashboardScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<DashboardController>(
//       builder: (controller) => Scaffold (
//     body: SafeArea(
//     child: IndexedStack(
//       index: controller.tabIndex,
//       children: [
//         const HomeScreen(),
//         Container(
//           color: Colors.red,
//         ),
//         Container(
//           color: Colors.blue,
//         ),
//         Container(
//           color: Colors.orange,
//         )
//       ],
//     ),
//     ),
//     bottomNavigationBar: Container(
//     decoration: BoxDecoration(
//     color: Colors.white,
//     border: Border(
//     top: BorderSide(
//     color: Theme.of(context).colorScheme.secondary,
//     width: 0.7
//     )
//     )
//     ),
//     child: SnakeNavigationBar.color(
//     behaviour: SnakeBarBehaviour.floating,
//     snakeShape: SnakeShape.circle,
//     padding: const EdgeInsets.symmetric(vertical: 5),
//     unselectedLabelStyle: const TextStyle(fontSize: 11),
//     snakeViewColor: Theme.of(context).primaryColor,
//     unselectedItemColor: Theme.of(context).colorScheme.secondary,
//     showUnselectedLabels: true,
//     currentIndex: controller.tabIndex,
//     onTap: (val){
//       controller.updateIndex(val);
//     },
//     items: const [
//     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//     BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Category'),
//     BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
//     BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account'),
//     ],
//     ),
//     ),
//     ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
// import 'package:get/get.dart';
// import 'package:tugas_magang/controller/dashboard_controller.dart';
// import 'package:tugas_magang/view/home/search_and_cart.dart';
// // import 'package:tugas_magang/view/home/home_screen.dart';
//
// class DashboardScreen extends StatelessWidget {
//   const DashboardScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<DashboardController>(
//       builder: (controller) => Scaffold(
//         appBar: controller.tabIndex == 0 // Show search and cart on Home tab
//             ? AppBar(
//           title: const Text('Search & Cart with Badge'),
//           actions: [
//             CartBadge(), // Badge for the cart
//           ],
//         )
//             : null,
//         body: SafeArea(
//           child: IndexedStack(
//             index: controller.tabIndex,
//             children: [
//               // const HomeScreen(),
//               LongSearchBox(),
//               Container(color: Colors.red),
//               Container(color: Colors.blue),
//               Container(color: Colors.orange),
//             ],
//           ),
//         ),
//         bottomNavigationBar: Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             border: Border(
//               top: BorderSide(
//                 color: Theme.of(context).colorScheme.secondary,
//                 width: 0.7,
//               ),
//             ),
//           ),
//           child: SnakeNavigationBar.color(
//             behaviour: SnakeBarBehaviour.floating,
//             snakeShape: SnakeShape.circle,
//             padding: const EdgeInsets.symmetric(vertical: 5),
//             unselectedLabelStyle: const TextStyle(fontSize: 11),
//             snakeViewColor: Theme.of(context).primaryColor,
//             unselectedItemColor: Theme.of(context).colorScheme.secondary,
//             showUnselectedLabels: true,
//             currentIndex: controller.tabIndex,
//             onTap: (val) {
//               controller.updateIndex(val);
//             },
//             items: const [
//               BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//               BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Category'),
//               BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
//               BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:get/get.dart';
import 'package:tugas_magang/controller/dashboard_controller.dart';
import 'package:tugas_magang/view/home/search_and_cart.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: controller.isSearching
              ? TextField(
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'Search...',
              border: InputBorder.none,
            ),
            onChanged: (value) {
              // Handle search query changes
              print("Search query: $value");
            },
          )
              : const Text('PT Imersa Solusi Teknologi'),
          actions: [
            IconButton(
              icon: Icon(controller.isSearching ? Icons.close : Icons.search),
              onPressed: () {
                controller.toggleSearch();
              },
            ),
            // CartBadge(), // Badge for the cart
          ],
        ),
        // body: SafeArea(
          // child: IndexedStack(
          //   index: controller.tabIndex,
          //   children: [
          //     LongSearchBox(),
          //     Container(color: Colors.red),
          //     Container(color: Colors.blue),
          //     Container(color: Colors.orange),
          //   ],
          // ),
        // ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                color: Theme.of(context).colorScheme.secondary,
                width: 0.7,
              ),
            ),
          ),
          child: SnakeNavigationBar.color(
            behaviour: SnakeBarBehaviour.floating,
            snakeShape: SnakeShape.circle,
            padding: const EdgeInsets.symmetric(vertical: 5),
            unselectedLabelStyle: const TextStyle(fontSize: 11),
            snakeViewColor: Theme.of(context).primaryColor,
            unselectedItemColor: Theme.of(context).colorScheme.secondary,
            showUnselectedLabels: true,
            currentIndex: controller.tabIndex,
            onTap: (val) {
              controller.updateIndex(val);
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Category'),
              BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account'),
            ],
          ),
        ),
      ),
    );
  }
}

