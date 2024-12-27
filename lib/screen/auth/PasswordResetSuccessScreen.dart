// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supremum/screen/auth/widget/curvedpainter.dart';
import 'package:supremum/screen/auth/widget/custom_button.dart';
import 'package:supremum/widget/navbar.dart';

class PasswordResetSuccessScreen extends StatelessWidget {
  const PasswordResetSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Curved background
            CustomPaint(
              size: Size(screenWidth, screenHeight * 0.3),
              painter: CurvedPainter(),
            ),
            // "Reset Password" text positioned within the curved background
            Positioned(
              top: screenHeight * 0.08, // Adjust as needed
              left: screenWidth * 0.05, // Small padding from left
              child: Text(
                'Reset Password',
                style: TextStyle(
                  fontSize: screenWidth * 0.08, // Dynamic font size
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            // Main content
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: screenHeight * 0.2),
                  Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: screenWidth * 0.2,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Your password was reset successfully',
                    style: TextStyle(
                      fontSize: screenWidth * 0.06,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: screenHeight * 0.1),
                  CustomButton(
                    text: 'Continue',
                    onPressed: () {
                      Get.offAll(() => const BottomNavigationBarWidget());
                    },
                    color: Colors.red,
                    textColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                    fontSize: screenWidth * 0.05,
                    borderRadius: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
