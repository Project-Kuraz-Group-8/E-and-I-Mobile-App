import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  double _progress = 0.33; // 1/3 for the first page

  void _goToNextPage() {
    setState(() {
      _progress = 0.66; // 2/3 for the second page
    });
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SecondPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Where are you located at?',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Country, city',
                hintStyle: TextStyle(color: Colors.blue),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Tell us about yourself. What are your goals and motives?',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Bio',
                hintStyle: TextStyle(color: Colors.blue),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 2.0),
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildProgressLine(_progress >= 0.33),
                _buildProgressLine(_progress >= 0.66),
                _buildProgressLine(_progress == 1.0),
              ],
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 160,
                height: 48,
                child: ElevatedButton(
                  onPressed: _goToNextPage,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF264065),
                  ),
                  child: Text('Next',style: TextStyle(fontSize: 16, color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressLine(bool isActive) {
    return Container(
      height: 4,
      width: 100,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey[300],
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Would you like to add your photo or your company's logo?",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              "This helps you stand out",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 40),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.grey[300],
                    child: Icon(Icons.person, size: 60, color: Colors.grey),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.edit, size: 20, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildProgressLine(true),
                _buildProgressLine(true),
                _buildProgressLine(false),
              ],
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 160,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF264065),
                  ),
                  child: Text('Next',style: TextStyle(fontSize: 16, color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressLine(bool isActive) {
    return Container(
      height: 4,
      width: 100,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey[300],
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Third Page')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "In which industry are you working or interested in?",
              style: TextStyle(fontSize: 38),
            ),
            SizedBox(height: 16),
            Wrap(
              spacing: 16, // Space between buttons horizontally
              runSpacing: 16, // Space between buttons vertically
              children: [
                _buildIndustryButton("Tech"),
                _buildIndustryButton("Health"),
                _buildIndustryButton("Energy"),
                _buildIndustryButton("Transport"),
                _buildIndustryButton("Entertainment"),
                _buildIndustryButton("Education"),
                _buildIndustryButton("Agriculture"),
                _buildIndustryButton("Other"),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildProgressLine(true),
                _buildProgressLine(true),
                _buildProgressLine(true),
              ],
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 160,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LastPage()),
                    );
                    // Handle next action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF264065),
                  ),
                  child: Text('Next',style: TextStyle(fontSize: 16, color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIndustryButton(String label) {
    return SizedBox(
      width: 150, // Fixed width for each button
      height: 50, // Fixed height for each button
      child: ElevatedButton(
        onPressed: () {
          // Handle industry selection
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFA9D6CB), // Button background color
        ),
        child: Text(
          label,
          style: TextStyle(
            color: Color(0xCC264065), // Updated text color
          ),
        ),
      ),
    );
  }

  Widget _buildProgressLine(bool isActive) {
    return Container(
      height: 4,
      width: 100,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey[300],
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}


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