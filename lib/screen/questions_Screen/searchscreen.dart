import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supremum/screen/questions_Screen/questionscreen.dart';

// Create SearchController for better state management
class SearchController extends GetxController {
  var searchQuery = ''.obs; // Observable variable to store search query

  // Method to update search query
  void updateSearchQuery(String query) {
    searchQuery.value = query;
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Instantiate the controller
    final SearchController controller = Get.put(SearchController());

    return Scaffold(
     
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Row to hold search bar and cancel button
            SizedBox(height: 20,),
            Row(
              children: [
                // Search bar container with search icon
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Obx(
                            () => TextField(
                              onChanged: (text) {
                                controller.updateSearchQuery(
                                    text); // Update search query in the controller
                              },
                              decoration: InputDecoration(
                                hintText: 'Search Question',
                                border: InputBorder.none,
                                suffixIcon:
                                    controller.searchQuery.value.isNotEmpty
                                        ? IconButton(
                                            icon: Icon(Icons.clear),
                                            onPressed: () {
                                              controller.updateSearchQuery(
                                                  ''); // Clear search query
                                            },
                                          )
                                        : null,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Cancel button text aligned to the right outside the search bar
                TextButton(
                  onPressed: () {
                    Get.to(QuestionsScreen());
                  },
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12), // Adding space below the search bar
            // Additional UI components can go here (like search results)
          ],
        ),
      ),
    );
  }
}
