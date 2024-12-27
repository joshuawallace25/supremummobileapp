import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supremum/screen/auth/loginScreen.dart';
import 'package:supremum/screen/auth/widget/custom_button.dart';
import 'package:supremum/screen/auth/widget/textfield.dart';
import 'package:supremum/widget/navbar.dart';

/// A stateless widget representing the Sign Up screen.
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions for responsive layouts
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Custom painted curved background
            CustomPaint(
              size: Size(screenWidth,
                  screenHeight * 0.3), // Dynamic height based on screen size
              painter: CurvedPainter(),
            ),
            // Main content of the form
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal:
                      screenWidth * 0.05), // 5% padding from left and right
              child: SingleChildScrollView(
                // Ensure scrollability on smaller screens
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Space between top and content
                    SizedBox(height: screenHeight * 0.1),

                    // Sign Up Text
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: screenWidth * 0.08, // Dynamic font size
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    // Space between title and text fields
                    SizedBox(height: screenHeight * 0.1),

                    // Form fields
                    const CustomTextField(
                      hintText: 'Full name',
                      icon: Icons.person,
                      // Increased font size for readability
                    ),
                    const SizedBox(height: 10),
                    const CustomTextField(
                      hintText: 'Email',
                      icon: Icons.email,
                      // Increased font size for readability
                    ),
                    const SizedBox(height: 10),
                    const CustomTextField(
                      hintText: 'Phone number',
                      icon: Icons.phone,
                      // Increased font size for readability
                    ),
                    const SizedBox(height: 10),
                    const CustomTextField(
                      hintText: 'Password',
                      icon: Icons.lock,
                      isPassword: true,
                      // Increased font size for readability
                    ),
                    const SizedBox(height: 20),

                    // Sign Up Button
                    CustomButton(
                      text: 'Sign Up',
                      onPressed: () {
                        Get.to(BottomNavigationBarWidget());
                      },
                      color: Colors.red,
                      textColor: Colors.white,
                      padding:
                          EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                      fontSize: screenWidth * 0.05,
                      borderRadius: 10,
                    ),

                    // Space between buttons
                    const SizedBox(height: 20),

                    // Divider with "or"
                    Row(
                      children: [
                        const Expanded(child: Divider(thickness: 1)),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('or'),
                        ),
                        const Expanded(child: Divider(thickness: 1)),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Google Sign Up Button
                    CustomButton(
                      text: 'Sign up with Google',
                      onPressed: () {},
                      color: Colors.grey.shade300,
                      textColor: Colors.black,
                      padding:
                          EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                      fontSize: screenWidth * 0.04,
                      borderRadius: 10,
                      icon: Icons.g_mobiledata,
                    ),

                    // Space between buttons
                    const SizedBox(height: 10),

                    // Continue as Guest Button
                    CustomButton(
                      text: 'Continue as Guest',
                      onPressed: () {},
                      color: Colors.grey.shade300,
                      textColor: Colors.black,
                      padding:
                          EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                      fontSize: screenWidth * 0.04,
                      borderRadius: 10,
                    ),

                    // Spacer for aligning the text at the bottom
                    const SizedBox(height: 20),

                    // Login redirection text
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Already have an account?',
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(width: 3),
                          GestureDetector(
                            onTap: () {
                              Get.to(LoginScreen());
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
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
}

/// CustomPainter for the curved background that appears at the top of the screen.
class CurvedPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.red; // Red background color
    Path path = Path();

    // Draw the curve
    path.lineTo(0, size.height - 27); // Adjusted lower-left corner height
    path.quadraticBezierTo(
      size.width / 4, // Control point X
      size.height - 40, // Control point Y (height)
      size.width, // End point X
      size.height - 80, // End point Y (height)
    );
    path.lineTo(size.width, 0); // Top-right corner
    path.close(); // Close the path

    // Draw the path on the canvas
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}