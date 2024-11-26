import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Search & Cart with Badge'),
          actions: [
            CartBadge(), // Badge untuk keranjang
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              LongSearchBox(),
              const SizedBox(height: 20),
              MainHeader(),
            ],
          ),
        ),
      ),
    );
  }
}

class LongSearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Search',
          hintText: 'Search for products or categories...',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          filled: true,
          fillColor: Colors.purple[100],
        ),
        onChanged: (value) {
          print('Search input: $value');
        },
      ),
    );
  }
}

class CartBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      position: badges.BadgePosition.topEnd(top: 5, end: 5),
      badgeContent: const Text(
        '3',
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
      badgeStyle: badges.BadgeStyle(
        badgeColor: Colors.red,
        padding: const EdgeInsets.all(6),
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        icon: const Icon(Icons.shopping_cart),
        onPressed: () {
          print('Cart tapped!');
        },
      ),
    );
  }
}

class MainHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      position: badges.BadgePosition.topEnd(top: -10, end: -12),
      badgeContent: const Icon(
        Icons.notifications,
        color: Colors.white,
        size: 18,
      ),
      badgeStyle: badges.BadgeStyle(
        badgeColor: Colors.blue,
        padding: const EdgeInsets.all(8),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        width: 100,
        height: 100,
        color: Colors.grey[300],
        alignment: Alignment.center,
        child: const Text(
          'Badge Container',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
