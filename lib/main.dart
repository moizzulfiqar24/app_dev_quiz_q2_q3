import 'package:flutter/material.dart';

void main() {
  runApp(AirPodsApp());
}

class AirPodsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AirPods Max',
      debugShowCheckedModeBanner: false,
      home: AirPodsScreen(),
    );
  }
}

class AirPodsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Text
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommended for\nyour devices',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),

              // Grey Container
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF1C1C1E), // dark grey background
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.all(20),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 16),
                        // Product Image
                        Center(
                          child: Image.asset(
                            'assets/airpods-max-white.png',
                            height: 180,
                          ),
                        ),
                        SizedBox(height: 32),

                        // Free Engraving
                        Text(
                          'Free Engraving',
                          style: TextStyle(
                            color: Colors.orangeAccent,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 8),

                        // Product Name
                        Text(
                          'AirPods Max — Silver',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8),

                        // Price
                        Text(
                          'A\$899.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 24),

                        // Color Dots and "+1 more"
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            colorCircle(Colors.black),
                            colorCircle(Colors.grey),
                            colorCircle(Colors.redAccent),
                            colorCircle(Colors.greenAccent),
                            SizedBox(width: 8),
                            Text(
                              '+1 more',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),

                    // Save Icon (Top Right Corner)
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Icon(
                        Icons.bookmark_border,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget colorCircle(Color color) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6),
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
