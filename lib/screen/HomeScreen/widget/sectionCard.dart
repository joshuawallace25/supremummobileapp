// Section Card Widget with larger width and location label on the image
import 'package:flutter/material.dart';
import 'package:supremum/app/model/section_item.dart';

class SectionCard extends StatelessWidget {
  final SectionItem item;

  const SectionCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240, // Increased width for each card
      margin: const EdgeInsets.only(right: 12.0), // Add spacing between cards
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(0, 3), // Shadow position
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.asset(
                  item.imagePath!, // Local image from assets
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              if (item.location.isNotEmpty)
                Positioned(
                  bottom: 8,
                  left: 8,
                  child: Row(
                    children: [
                      Icon(Icons.location_pin, size: 14, color: Colors.white),
                      SizedBox(width: 4),
                      Text(
                        item.location,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              item.title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}


