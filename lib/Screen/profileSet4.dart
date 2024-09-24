import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hasab/Screen/profileSet5.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  // Keep track of the selected industry
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('set your profile')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "In which industry are you working or interested in?",
                      style: TextStyle(fontSize: 32),
                    ),
                    SizedBox(height: 16),
                    Center(
                      child: Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        children: [
                          _buildIndustryButton("Tech", 0),
                          _buildIndustryButton("Health", 1),
                          _buildIndustryButton("Energy", 2),
                          _buildIndustryButton("Transport", 3),
                          _buildIndustryButton("Entertainment", 4),
                          _buildIndustryButton("Education", 5),
                          _buildIndustryButton("Agriculture", 6),
                          _buildIndustryButton("Other", 7),
                        ],
                      ),
                    ),
                    SizedBox(height: 24),

                    // Add the "Any Social links?" text
                    Text(
                      "Any Social links?",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        height: 1.33,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 16), // Spacing before input boxes

                    // Add LinkedIn Input Box
                    _buildSocialInputBox(
                        context,
                        "https://www.linkedin.com/in/",
                        FontAwesomeIcons.linkedinIn
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    // Add Twitter Input Box
                    _buildSocialInputBox(
                        context,
                        "https://www.twitter.com/in/",
                        FontAwesomeIcons.twitter
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    // Add Facebook Input Box
                    _buildSocialInputBox(
                        context,
                        "https://www.facebook.com/in/",
                        FontAwesomeIcons.facebookF
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Column(
              children: [
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
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF264065),
                      ),
                      child: Text(
                        'Next',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIndustryButton(String label, int index) {
    bool isSelected = _selectedIndex == index;

    return SizedBox(
      width: 160,
      height: 40,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _selectedIndex = isSelected ? null : index; // Toggle selection
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFA9D6CB),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isSelected)
              Icon(Icons.check, color: Colors.white, size: 16), // Checkmark icon
            SizedBox(width: isSelected ? 8 : 0), // Space if selected
            Text(
              label,
              style: TextStyle(
                color: Color(0xCC264065),
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialInputBox(BuildContext context, String placeholder, IconData icon) {
    return Container(
      width: 328,
      height: 56,
      padding: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        color: Color(0xFFF1F5FD),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          FaIcon(icon, color: Colors.grey, size: 24),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: placeholder,
                hintStyle: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                  letterSpacing: 0.15,
                  color: Color(0xFF909090),
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressLine(bool isActive) {
    return Container(
      height: 4,
      width: 100,
      decoration: BoxDecoration(
        color: isActive ? Color(0x909090CC) : Colors.grey[300], // Updated color
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}