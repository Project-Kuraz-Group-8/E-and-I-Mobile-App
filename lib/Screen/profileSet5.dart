import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class LastPage extends StatefulWidget {
  @override
  _LastPageState createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile Ready')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            Text(
              "Great job! Now your profile is ready to go!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
            // Lottie animation for an attractive effect
            Center(
              child: Lottie.network(
                'https://lottie.host/01a1dc05-4980-4574-b46f-c053346ae776/hFdEX4TxQF.json', // Lottie animation URL
                height: 330,
                width: 330,
                fit: BoxFit.cover,
              ),
            ),
            Spacer(),
            SizedBox(
              width: double.infinity, // Full width of the screen
              child: ElevatedButton(
                onPressed: () {
                  // Handle continue action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF264065), // Background color
                  minimumSize: Size(double.infinity, 50), // Button width increased (infinity for full width)
                  padding: EdgeInsets.symmetric(vertical: 15), // Vertical padding adjusted
                ),
                child: Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white, // Button text color
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
