import 'package:flutter/material.dart';
import 'package:hasab/Screen/Role.dart';
import 'package:hasab/Screen/signUpPage.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0,left: 20.0),
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
                    Center(child: Image.asset('images/fr2.png')),
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
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) => SignUpPage(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        // Slide transition: Slide from right to left
                        var slideAnimation = Tween<Offset>(
                          begin: Offset(1.0, 0.0), // Slide from right
                          end: Offset.zero, // To the center (no offset)
                        ).animate(animation);

                        // Fade transition
                        var fadeAnimation = Tween<double>(
                          begin: 0.0, // Fully transparent
                          end: 1.0, // Fully visible
                        ).animate(animation);

                        return SlideTransition(
                          position: slideAnimation,
                          child: FadeTransition(
                            opacity: fadeAnimation,
                            child: child,
                          ),
                        );
                      },
                    ),
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
