import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final Color bgcolor;
  final Color boxShadowColor;
  final Color borderColor;
  final VoidCallback? onTap;  // Optional callback for onTap event

  const DashboardCard({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.bgcolor,
    required this.boxShadowColor,
    required this.borderColor,
    this.onTap,  // Initialize the callback
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Call the provided onTap callback
      child: Container(
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: boxShadowColor.withOpacity(0.2),
              blurRadius: 8,
              spreadRadius: 2,
              offset: Offset(0, 2),
            ),
          ],
          border: Border.all(color: borderColor, width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: color),
            SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(color: color, fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
