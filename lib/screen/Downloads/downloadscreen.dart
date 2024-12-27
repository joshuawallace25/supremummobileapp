import 'package:flutter/material.dart';



class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                'Downloads',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.download_rounded,
                      size: 80,
                      color: Colors.pink,
                    ),
                    const SizedBox(height: 24),
                    Column(
                      children: [
                        const Text(
                          'No Downloads Available',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                           
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Check out the questions page to subscribe to our content or download past questions.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
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
}
