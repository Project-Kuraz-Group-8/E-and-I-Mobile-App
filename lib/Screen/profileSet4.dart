import 'package:flutter/material.dart';
import 'package:hasab/Screen/profileSet5.dart';

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
