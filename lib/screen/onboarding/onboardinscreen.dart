import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supremum/app/utils/constant_Strrings.dart';
import 'package:supremum/screen/auth/loginScreen.dart';
import 'package:supremum/screen/auth/widget/custom_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  List<Widget> _buildPages(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return [
      // Onboarding 1
      OnboardingPage(
        imagePath: ConstantStrings.onboard3, // Your illustration asset
        title: 'Past questions Solutions and quizes',
        description: 'Get access to Past questions Solutions and quizes',
        screenWidth: screenWidth,
        screenHeight: screenHeight,
        buttonText: 'Next',
        onPressed: () {
          _pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        },
      ),
      // Onboarding 2
      OnboardingPage(
        imagePath: ConstantStrings.onboard2, // Your illustration asset
        title: 'Career Orientation',
        description:
            'Explore career options with detailed info on fields, job prospects, and qualifications to help you decide.',
        screenWidth: screenWidth,
        screenHeight: screenHeight,
        buttonText: 'Next',
        onPressed: () {
          _pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
          );
        },
      ),
      // Onboarding 3
      OnboardingPage(
        imagePath: ConstantStrings.onboard1, // Your illustration asset
        title: 'Professional schools, and Universities',
        description: 'Get access to Past questions Solutions and quizes',
        screenWidth: screenWidth,
        screenHeight: screenHeight,
        buttonText: 'Get started',
        onPressed: () {
          Get.offAll(() => const LoginScreen()); // Redirect to the next page
        },
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: _buildPages(context),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: TextButton(
                onPressed: () {
                  Get.offAll(() => const LoginScreen()); // Skip button action
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
            ),
            // Dots Indicator
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => buildDot(index, context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: _currentPage == index ? 20 : 10,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: _currentPage == index ? Colors.red : Colors.grey,
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final double screenWidth;
  final double screenHeight;
  final String buttonText;
  final VoidCallback onPressed;

  const OnboardingPage({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.screenWidth,
    required this.screenHeight,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: screenHeight * 0.4,
            width: screenWidth * 0.8,
          ),
          SizedBox(height: screenHeight * 0.05),
          Text(
            title,
            style: TextStyle(
              fontSize: screenWidth * 0.06,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: screenHeight * 0.02),
          Text(
            description,
            style: TextStyle(
              fontSize: screenWidth * 0.04,
              color: Colors.grey,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: screenHeight * 0.1),
          CustomButton(
            text: buttonText,
            onPressed: onPressed,
            color: Colors.red, // You can adjust color to your theme
            textColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
            borderRadius: 10, // Adjust this based on your custom button implementation
          ),
        ],
      ),
    );
  }
}
