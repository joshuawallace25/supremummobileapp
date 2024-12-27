import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supremum/screen/auth/ResetPasswordScreen.dart';
import 'package:supremum/screen/auth/loginScreen.dart';
import 'package:supremum/screen/auth/widget/custom_button.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

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
                   SizedBox(height: 20,),
                  SizedBox(height: screenHeight * 0.1),
                 
                Row(
                  children: [
                     GestureDetector(
                      onTap:(){
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back, color: Colors.white,)),
 Text(
                    'Verification',
                    style: TextStyle(
                      fontSize: screenWidth * 0.08,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  ],
                ),
                 
                  SizedBox(height: screenHeight * 0.1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(4, (index) {
                      return SizedBox(
                        width: screenWidth * 0.15,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      );
                    }),
                  ),

                  SizedBox(height: 20,),
                  Center(child: Text("If you have not received any code yet,")),
                  Center(child: Text("Resend again", style: TextStyle(fontWeight:FontWeight.bold,color:  Colors.red),)),
                  SizedBox(height: 20),
                  CustomButton(
                    text: 'Verify',
                    onPressed: () {
                      Get.to(() => const ResetPasswordScreen());
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
