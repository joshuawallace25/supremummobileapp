import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supremum/app/model/section_item.dart';
import 'package:supremum/screen/HomeScreen/DashboardCardScreen/concours.dart';
import 'package:supremum/screen/HomeScreen/widget/dashboardcard.dart';
import 'package:supremum/screen/HomeScreen/widget/sectionList.dart';
import 'package:supremum/app/utils/constant_Strrings.dart';
import 'package:supremum/screen/questions_Screen/questionscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Greeting Section
                    Text(
                      'Hi Njita',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Glad to see you here!',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            // Dashboard Grid
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return DashboardCard(
                    title: _getCardTitle(index),
                    icon: _getCardIcon(index),
                    color: _getCardColor(index),
                    bgcolor: _getCardBgColor(index),
                    boxShadowColor: _getCardBoxShadowColor(index),
                    borderColor: _getCardBorderColor(index),
                    onTap: () {
                      if (index == 0) {
                        // Navigate to the Concours screen
                       Get.to(ConcoursScreen());
                        
                      } else if (index == 1) {
                        // Navigate to the Questions screen
                         Get.to(QuestionsScreen());
                      }
                    },
                  );
                },
                childCount: 6, // Number of grid items
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Upcoming Concours Section
                    SectionList(
                      sectionTitle: 'Upcoming concours',
                      items: [
                        SectionItem(
                          title: 'FET - Faculty of Engineering and Technology',
                          location: '',
                          imagePath: ConstantStrings.house4, // Local image
                        ),
                         SectionItem(
                          title: 'FET - Faculty of Engineering and Technology',
                          location: '',
                          imagePath: ConstantStrings.house2, // Local image
                        ),
                      ],
                    ),
                    // Most Popular Universities Section
                    SectionList(
                      sectionTitle: 'Most popular universities',
                      items: [
                        SectionItem(
                          title: 'FET - Faculty of Engineering and Technology',
                          location: 'Buea',
                          imagePath: ConstantStrings.house6, // Local image
                        ),
                         SectionItem(
                          title: 'FET - Faculty of Engineering and Technology',
                          location: '',
                          imagePath: ConstantStrings.house5, // Local image
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getCardTitle(int index) {
    switch (index) {
      case 0:
        return 'Concours';
      case 1:
        return 'Questions';
      case 2:
        return 'Quiz';
      case 3:
        return 'Universities';
      case 4:
        return 'Tutorials';
      case 5:
        return 'Help';
      default:
        return '';
    }
  }

  IconData _getCardIcon(int index) {
    switch (index) {
      case 0:
        return Icons.send;
      case 1:
        return Icons.question_answer;
      case 2:
        return Icons.timer;
      case 3:
        return Icons.account_balance;
      case 4:
        return Icons.article;
      case 5:
        return Icons.help;
      default:
        return Icons.help;
    }
  }

  Color _getCardColor(int index) {
    switch (index) {
      case 0:
        return Colors.red;
      case 1:
        return Colors.blue;
      case 2:
        return Colors.orange;
      case 3:
        return Colors.green;
      case 4:
        return Colors.purple;
      case 5:
        return Colors.teal;
      default:
        return Colors.black;
    }
  }

  Color _getCardBgColor(int index) {
    switch (index) {
      case 0:
        return Colors.red.shade50;
      case 1:
        return Colors.blue.shade50;
      case 2:
        return Colors.orange.shade50;
      case 3:
        return Colors.green.shade50;
      case 4:
        return Colors.purple.shade50;
      case 5:
        return Colors.teal.shade50;
      default:
        return Colors.white;
    }
  }

  Color _getCardBoxShadowColor(int index) {
    switch (index) {
      case 0:
        return Colors.red;
      case 1:
        return Colors.blue;
      case 2:
        return Colors.orange;
      case 3:
        return Colors.green;
      case 4:
        return Colors.purple;
      case 5:
        return Colors.teal;
      default:
        return Colors.black;
    }
  }

  Color _getCardBorderColor(int index) {
    switch (index) {
      case 0:
        return Colors.red;
      case 1:
        return Colors.blue;
      case 2:
        return Colors.orange;
      case 3:
        return Colors.green;
      case 4:
        return Colors.purple;
      case 5:
        return Colors.teal;
      default:
        return Colors.black;
    }
  }
}
