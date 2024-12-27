import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supremum/app/utils/constant_Strrings.dart';
import 'package:supremum/screen/auth/loginScreen.dart';
import 'package:supremum/screen/questions_Screen/searchscreen.dart';
import 'package:supremum/screen/questions_Screen/widget/questioncard.dart';
import 'package:supremum/widget/navbar.dart';

class QuestionsController extends GetxController {
  RxBool isQuestionsSelected = true.obs;

  // Open Drawer
  void openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  // Toggle button handler
  void onToggleButton(int index) {
    isQuestionsSelected.value = index == 0;
  }
}

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final QuestionsController controller = Get.put(QuestionsController());

    return Scaffold(
      // Modified Drawer
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Custom Drawer Header with gradient and user name
            DrawerHeader(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red, Colors.redAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Njita Arnaud',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            // Drawer Items (ListTiles)
            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text('Profile'),
              onTap: () {
                // Handle Profile navigation
              },
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share app'),
              onTap: () {
                // Handle Share navigation
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_support_outlined),
              title: Text('Contact us'),
              onTap: () {
                // Handle Contact us navigation
              },
            ),
            ListTile(
              leading: Icon(Icons.settings_outlined),
              title: Text('Settings'),
              onTap: () {
                // Handle Settings navigation
              },
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Language'),
              trailing: Text('English'),
              onTap: () {
                // Handle Language navigation
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.redAccent),
              title: Text(
                'Logout',
                style: TextStyle(color: Colors.redAccent),
              ),
              onTap: () {
                Get.to(LoginScreen());
              },
            ),
            Spacer(),
            // Close Button at the Bottom
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.close, size: 30),
                onPressed: () {
                  Navigator.pop(context); // Close the drawer
                },
              ),
            ),
          ],
        ),
      ),
      body: Builder(
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Row with Back, Search, and Menu Icons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.to(BottomNavigationBarWidget(key: key,));
                          },
                          icon: Icon(Icons.arrow_back),
                        ),
                        Text(
                          'Back',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            //
                            Get.to(SearchScreen());
                          },
                          icon: Icon(Icons.search),
                        ),
                        IconButton(
                          onPressed: () {
                            controller.openDrawer(context);
                          },
                          icon: Icon(Icons.menu),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Toggle Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        // Handle filter action
                      },
                      icon: Icon(Icons.filter_list),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Questions List
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: QuestionCard(
                          icon: Image.asset(
                            ConstantStrings
                                .house3, // Replace with your actual image path
                            width: 40,
                            height: 40,
                          ),
                          title:
                              'Mathematics - ${index == 0 ? "2022" : "2018"}',
                          subtitle: 'FET Buea',
                          isFree: index == 2,
                          downloads: '200',
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

// QuestionCard widget
