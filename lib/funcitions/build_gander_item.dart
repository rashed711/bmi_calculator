import 'package:flutter/material.dart';

Widget buildGanderItem({
    required IconData icon,
    required String text,
    required VoidCallback onPressed,
    required bool isActive,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: isActive ? Colors.red : Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(icon, size: 120, color: Colors.white),
            Text(text, style: TextStyle(fontSize: 25, color: Colors.white)),
          ],
        ),
      ),
    );
  }

