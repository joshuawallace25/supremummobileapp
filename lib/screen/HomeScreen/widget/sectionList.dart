// Section List Widget
import 'package:flutter/material.dart';
import 'package:supremum/app/model/section_item.dart';
import 'package:supremum/screen/HomeScreen/widget/sectionCard.dart';

class SectionList extends StatelessWidget {
  final String sectionTitle;
  final List<SectionItem> items;

  const SectionList({
    super.key,
    required this.sectionTitle,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sectionTitle,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {
                  // Navigate to See All screen
                },
                child: Text('See all', style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200, // Adjust the height for the list
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return SectionCard(item: items[index]);
            },
          ),
        ),
      ],
    );
  }
}