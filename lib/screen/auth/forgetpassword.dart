import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supremum/screen/auth/verification.dart';
import 'package:supremum/screen/auth/widget/curvedpainter.dart';
import 'package:supremum/screen/auth/widget/custom_button.dart';
import 'package:supremum/screen/auth/widget/textfield.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            CustomPaint(
              size: Size(screenWidth, screenHeight * 0.3),
              painter: CurvedPainter(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenHeight * 0.1),
                  Row(
                  children: [
                     GestureDetector(
                      onTap:(){
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back, color: Colors.white,)),
 Text(
                    'Forget Password',
                    style: TextStyle(
                      fontSize: screenWidth * 0.08,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  ],
                ),
                 
                  SizedBox(height: screenHeight * 0.1),
                  CustomTextField(
                    hintText: 'Phone number',
                    icon: Icons.phone,
                  ),
                  SizedBox(height: 20),
                  CustomButton(
                    text: 'Send Verification Code',
                    onPressed: () {
                      Get.to(() => const VerificationScreen());
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
