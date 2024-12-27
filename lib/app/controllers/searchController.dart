import 'package:get/get.dart';

class SearchhController extends GetxController {
  var searchQuery = ''.obs;

  // Method to update search query
  void updateSearchQuery(String query) {
    searchQuery.value = query;
  }
}
