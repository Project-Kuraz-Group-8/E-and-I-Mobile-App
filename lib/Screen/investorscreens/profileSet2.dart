import 'package:flutter/material.dart';
import 'package:hasab/Screen/investorscreens/profileSet3.dart';


class FirstPagei extends StatefulWidget {
  @override
  _FirstPageiState createState() => _FirstPageiState();
}

class _FirstPageiState extends State<FirstPagei> {
  double _progress = 0.33; // 1/3 for the first page

  void _goToNextPage() {
    setState(() {
      _progress = 0.66; // 2/3 for the second page
    });
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SecondPagei(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page')),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // "Where are you located" text with the specified style
                    Container(
                      width: double.infinity,
                      height: 64,
                      child: Text(
                        'Where are you located at?',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          height: 1.33, // line height / font size (32 / 24)
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    // First input box
                    Container(
                      width: double.infinity,
                      height: 56,
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      decoration: BoxDecoration(
                        color: Color(0xFFF1F5FD), // #F1F5FD background color
                        borderRadius: BorderRadius.all(
                           Radius.circular(16),
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Country, city',
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.5, // line height / font size (24 / 16)
                            letterSpacing: 0.15,
                            color: Color(0xFF909090),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    // "Tell us about yourself" text with the specified style
                    Container(
                      width: double.infinity,
                      height: 96,
                      child: Text(
                        'Tell us about yourself. What are your goals and motives?',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          height: 1.33, // line height / font size (32 / 24)
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    // Second input box
                    Container(
                      width: double.infinity,
                      height: 176,
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                      decoration: BoxDecoration(
                        color: Color(0xFFF1F5FD), // #F1F5FD background color
                        borderRadius: BorderRadius.all(
                           Radius.circular(14),
                        ),
                      ),
                      child: TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                          hintText: 'Bio',
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1.5, // line height / font size (24 / 16)
                            letterSpacing: 0.15,
                            color: Color(0xFF909090),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Progress lines and Next button at the bottom with padding
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0), // Add space to left and right
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildProgressLine(_progress >= 0.33),
                        _buildProgressLine(_progress >= 0.66),
                        _buildProgressLine(_progress == 1.0),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0), // Add space to left and right
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        width: 160,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: _goToNextPage,
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
                  ),
                ],
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
        color: isActive ? Color(0x909090CC) : Colors.grey[300], // Updated color
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
