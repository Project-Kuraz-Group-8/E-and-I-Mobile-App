import 'package:flutter/material.dart';

class RoleSelectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Role')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'I am an',
              style: TextStyle(fontSize: 60),
            ),
            Text(
              'Select one that applies to you',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 0),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'investor');
                      },
                      child: Container(
                        height: 222,
                        width: 168,
                        decoration: BoxDecoration(
                          color: Color(0xFFA3D1ED),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
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
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'entrepreneur');
                      },
                      child: Container(
                        height: 222,
                        width: 168,
                        decoration: BoxDecoration(
                          color: Color(0xFFA9D6CB),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
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

class InvestorPage extends StatelessWidget {
  String id = 'investor';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Investor Page')),
      body: Center(child: Text('Welcome, Investor!')),
    );
  }
}

class EntrepreneurPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Entrepreneur Page')),
      body: Center(child: Text('Welcome, Entrepreneur!')),
    );
  }
}
