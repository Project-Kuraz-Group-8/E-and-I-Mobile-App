import 'package:flutter/material.dart';
import 'package:hasab/Screen/ProfileSet.dart';
import 'package:hasab/Screen/signUpPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Role Selection',
      home: RoleSelectionPage(),
    );
  }
}

class RoleSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Role')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'I am an',
              style: TextStyle(fontSize: 60),
            ),
            const Text(
              'Select one that applies to you',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 0),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            //TODO pass parameter
                            pageBuilder: (context, animation, secondaryAnimation) => const SignUpPage(),
                            transitionsBuilder: (context, animation, secondaryAnimation, child) {
                              // Define the offset for the slide transition
                              const begin = Offset(1.0, 0.0); // Start from right
                              const end = Offset.zero; // End at the center
                              const curve = Curves.easeInOut; // Easing curve for smooth transition

                              // Create the tween and animation
                              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                              var offsetAnimation = animation.drive(tween);

                              return SlideTransition(
                                position: offsetAnimation,
                                child: child,
                              );
                            },
                          ),
                        );

                      },
                      child: Container(
                        height: 222,
                        width: 168,
                        decoration: BoxDecoration(
                          color: const Color(0xFFA3D1ED),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.attach_money, size: 100, color: Colors.black),
                              SizedBox(height: 10),
                              Text(
                                'Investor',
                                style: TextStyle(fontSize: 25, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            //TODO pass parameter
                            pageBuilder: (context, animation, secondaryAnimation) => const SignUpPage(),
                            transitionsBuilder: (context, animation, secondaryAnimation, child) {
                              // Define the offset for the slide transition
                              const begin = Offset(1.0, 0.0); // Start from right
                              const end = Offset.zero; // End at the center
                              const curve = Curves.easeInOut; // Easing curve for smooth transition

                              // Create the tween and animation
                              var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                              var offsetAnimation = animation.drive(tween);

                              return SlideTransition(
                                position: offsetAnimation,
                                child: child,
                              );
                            },
                          ),
                        );

                      },
                      child: Container(
                        height: 222,
                        width: 168,
                        decoration: BoxDecoration(
                          color: const Color(0xFFA9D6CB),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.business, size: 100, color: Colors.black),
                              SizedBox(height: 10),
                              Text(
                                'Entrepreneur',
                                style: TextStyle(fontSize: 25, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
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
