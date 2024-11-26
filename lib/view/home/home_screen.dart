import 'package:flutter/material.dart';
import '../../component/main_header.dart'; // Import MainHeader

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          MainHeader(), // Use MainHeader widget here
          // You can add more widgets below as needed
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:tugas_magang/lib/component/main_header.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Column(
//           children: [
//             MainHeader();
//           ],
//         )
//     );
//   }
// }
