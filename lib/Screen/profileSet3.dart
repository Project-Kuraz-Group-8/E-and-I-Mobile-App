import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:hasab/Screen/profileSet4.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  File? _image;

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('set your profile')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // "Would you like to upload your photo or your company's logo?" with specified styles
            Text(
              "Would you like to add your photo or your company's logo?",
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 24,
                fontWeight: FontWeight.w400,
                height: 1.33, // Line height: 32px / Font size: 24px
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(height: 8),
            // "This helps you stand out" with specified styles
            Text(
              "This helps you stand out",
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                height: 1.5, // Line height: 24px / Font size: 16px
                letterSpacing: 0.15,
                color: Color(0xB2000000), // Background opacity
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Stack(
                children: [
                  // Circle avatar with image from gallery or placeholder
                  CircleAvatar(
                    radius: 80, // Increased size
                    backgroundColor: Colors.grey[300],
                    backgroundImage: _image != null ? FileImage(_image!) : null,
                    child: _image == null
                        ? Icon(Icons.person, size: 80, color: Colors.grey)
                        : null,
                  ),
                  // Edit icon that opens image picker
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: _pickImage,
                      child: CircleAvatar(
                        radius: 24, // Increased size
                        backgroundColor: Colors.blue,
                        child: Icon(Icons.edit, size: 24, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            // Progress lines
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildProgressLine(true),
                _buildProgressLine(true),
                _buildProgressLine(false),
              ],
            ),
            SizedBox(height: 16),
            // Next button
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
                  child: Text('Next',
                      style: TextStyle(fontSize: 16, color: Colors.white)),
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
        color: isActive ? Color(0x909090CC) : Colors.grey[300], // Updated color
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}

