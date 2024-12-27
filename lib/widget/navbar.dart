import 'package:flutter/material.dart';
import 'package:supremum/screen/Downloads/downloadscreen.dart';
import 'package:supremum/screen/HomeScreen/home.dart';
import 'package:supremum/screen/OrientationScreen/orentationScreen.dart';
import 'package:supremum/screen/questions_Screen/questionscreen.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  // The current selected index for the BottomNavigationBar
  int _selectedIndex = 0;

  // List of screens for the BottomNavigationBar
  final List<Widget> _screens = [
    const HomeScreen(),
    const QuestionsScreen(),
    const OrientationScreen(),
    const DownloadScreen(),
  ];

  // Method to update the screen when a navigation item is selected
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Body shows the screen based on the selected index
      body: _screens[_selectedIndex],
      // BottomNavigationBar for navigation
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description, color: Colors.grey),
            label: 'Questions',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school, color: Colors.grey),
            label: 'Orientation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download, color: Colors.pink),
            label: 'Downloads',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
