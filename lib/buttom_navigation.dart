import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Color(0xFF323232),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(icon: Icons.home, isActive: true),
          BottomNavItem(icon: Icons.shopping_cart),
          BottomNavItem(icon: Icons.favorite),
          BottomNavItem(icon: Icons.notifications)
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  late IconData icon;
  late bool isActive;
  BottomNavItem({
    required this.icon,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isActive = true;
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(
            icon,
            color: isActive ? Colors.yellow : Colors.black,
          ),
        ],
      ),
    );
  }
}
