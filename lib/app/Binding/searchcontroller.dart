import 'package:get/get.dart';
import 'package:supremum/app/controllers/searchController.dart';




class CreateAccountControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchhController());
  }
}