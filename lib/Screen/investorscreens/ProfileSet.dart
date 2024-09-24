import 'package:flutter/material.dart';
import 'package:hasab/Screen/investorscreens/mainpage1.dart';
import 'package:hasab/Screen/investorscreens/profileSet2.dart';
import 'package:lottie/lottie.dart';
import 'package:hasab/Screen/ProfileSet2.dart';


class ProfileSetupScreeni extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // 1st: Text message
                const Padding(
                  padding: EdgeInsets.only(top: 10.0,left: 5.0,right: 13),
                  child: Text(
                    'Finish setting up your profile to explore opportunities',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 39,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // 2nd: Animation from the link using Lottie
                Lottie.network(
                  'https://lottie.host/0e313a4b-e1e1-4243-aa55-3e612fed5303/5QYYrvHYlR.json', // Lottie animation URL
                  height: 330,
                  width: 330,
                  fit: BoxFit.cover,
                ),

                // 3rd: Two buttons (Continue and Skip for now)
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => FirstPagei(),
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
                        // Continue action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF264065), // Background color
                        minimumSize: const Size(double.infinity, 50), // Button width increased (infinity for full width)
                        padding: const EdgeInsets.symmetric(vertical: 15), // Vertical padding adjusted
                      ),
                      child: const Text(
                        'Continue',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                    const SizedBox(height: 18,),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) =>  HomePage(),
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
                        // Skip for now action
                      },
                      style: OutlinedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 50),
                        padding: const EdgeInsets.symmetric( vertical: 15),
                      ),
                      child: const Text(
                        'Skip for now',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
