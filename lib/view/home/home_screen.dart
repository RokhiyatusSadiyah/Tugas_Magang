import 'package:flutter/material.dart';
import '../../component/main_header.dart'; // Import MainHeader
import 'package:tugas_magang/view/home/search_and_cart.dart' as search_and_cart; // Alias for search_and_cart

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          MainHeader(), // Main header (with badge)
          const SizedBox(height: 20),
          search_and_cart.LongSearchBox(), // Use alias to call LongSearchBox
          const SizedBox(height: 20),
          search_and_cart.CartBadge(), // Use alias to call CartBadge
          // You can add more widgets below as needed
        ],
      ),
    );
  }
}


//Kode Lama
// import 'package:flutter/material.dart';
// import '../../component/main_header.dart'; // Import MainHeader
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Column(
//         children: [
//           MainHeader(), // Use MainHeader widget here
//           // You can add more widgets below as needed
//         ],
//       ),
//     );
//   }
// }


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
