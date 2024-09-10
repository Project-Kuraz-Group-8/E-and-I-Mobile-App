import 'package:flutter/material.dart';
import 'package:hasab/Screen/Role.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Welcome to ',
                            style: TextStyle(
                              fontSize: 57,

                              color: Colors.black, // Default color for "Welcome to"
                            ),
                          ),
                          TextSpan(
                            text: 'Hasab!',
                            style: TextStyle(
                              fontSize: 57,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF264065), // Different color for "Hasab!"
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10), // Space between title and subtitle
                    // Subtitle text
                    Text(
                      'Ideas meet investors here.',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF264065), // Background color
                  minimumSize: Size(double.infinity, 50), // Button width increased (infinity for full width)
                  padding: EdgeInsets.symmetric(vertical: 15), // Vertical padding adjusted
                ),
                onPressed: () {
                  // Button action here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RoleSelectionPage()),
                  );
                },
                child: Text(
                  'Get started',
                  style: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
