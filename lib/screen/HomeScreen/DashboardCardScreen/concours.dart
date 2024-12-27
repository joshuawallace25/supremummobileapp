import 'package:flutter/material.dart';
import 'package:supremum/app/utils/constant_Strrings.dart';
import 'package:supremum/screen/HomeScreen/DashboardCardScreen/widget/concoursCard.dart';

class ConcoursScreen extends StatelessWidget {
  const ConcoursScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context); // To navigate back
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                SizedBox(width: 10),
                Text(
                  'Concours',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 4, // Adjust the number of items
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: ConcoursCard(
                      icon: ClipOval(
                        child: Image.asset(
                          ConstantStrings.house6,
                          width: 40,
                          height: 40,
                          fit: BoxFit
                              .cover, // Ensures the image covers the area and maintains aspect ratio
                        ),
                      ),
                      title: 'FET - Faculty of Engineering and Technology',
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
