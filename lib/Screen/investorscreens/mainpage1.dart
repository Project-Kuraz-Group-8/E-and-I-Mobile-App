import 'package:flutter/material.dart';
import 'package:hasab/Screen/investorscreens/explorePage.dart';
import 'package:hasab/Screen/investorscreens/profilePage.dart';

import 'chatScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // List of pages corresponding to the bottom navigation items
  List<Widget> _pages = [
    HomeScreen(),
    ExploreScreen(),
    PortfolioScreen(),
    ChatScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Set the current selected index
        onTap: _onItemTapped, // Call when an item is tapped
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: 'Portfolio'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
        ],
        backgroundColor: Color(0xFFFFFFFF),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue[100],
      ),
    );
  }
}

// Dummy pages for navigation
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Box Container
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Hello!',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'User Name',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF000000),
                      ),
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          'https://th.bing.com/th/id/R.50b75a289fa726538066a479953a145a?rik=3jntFvTKUScxyg&pid=ImgRaw&r=0'),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.filter_list),
                    hintText: 'Search',
                    filled: true,
                    fillColor: Colors.white, // #FFFFFF for input box
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Second Box Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 160,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFA9D6CB),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Profile Views',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '20',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 160,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFA3D1ED),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Amount Invested',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '3K',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Recent Investments Section
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Recent Investments',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  width: 328,
                  margin: EdgeInsets.only(bottom: 12),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://th.bing.com/th/id/R.50b75a289fa726538066a479953a145a?rik=3jntFvTKUScxyg&pid=ImgRaw&r=0')),
                          SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Lora Beauty Products',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16)),
                              Text('17 Sep 2023',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12)),
                            ],
                          ),
                        ],
                      ),
                      Text('5000br',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ],
                  ),
                );
              },
            ),

            // Recommended Startups
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Recommended Startups',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(3, (index) {
                  return Container(
                    width: 280,
                    margin: EdgeInsets.only(right: 12),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Image.network(
                              'https://th.bing.com/th/id/R.aadcc28985874b6b842a1dddd248d755?rik=gQjuV%2beY%2fPv22w&pid=ImgRaw&r=0',
                              width: 248,
                              height: 144,
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                'https://th.bing.com/th/id/R.50b75a289fa726538066a479953a145a?rik=3jntFvTKUScxyg&pid=ImgRaw&r=0',
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: List.generate(4,
                              (index) => Icon(Icons.star, color: Colors.amber)),
                        ),
                        Text('Startup Name',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Goal Description',
                            style: TextStyle(fontStyle: FontStyle.italic)),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetu a molestie in malesuada.',
                          style: TextStyle(fontSize: 12),
                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Design'),
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Color(0xFF3C3C43),
                                minimumSize: Size(63, 32),
                                backgroundColor: Colors.transparent,
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                ),
                                side: BorderSide(
                                    color: Color(0xFF909090)), // Text color
                                elevation: 0, // Removes shadow
                              ),
                            ),
                            SizedBox(width: 12),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('IT'),
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Color(0xFF3C3C43),
                                minimumSize: Size(50, 32),
                                backgroundColor: Colors.transparent,
                                padding: EdgeInsets.symmetric(horizontal: 12),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                ),
                                side: BorderSide(color: Color(0xFF909090)),
                                elevation: 0,
                              ),
                            ),
                            SizedBox(width: 14),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('User Experience'),
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Color(0xFF3C3C43),
                                minimumSize: Size(63, 32),
                                backgroundColor: Colors.transparent,
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                ),
                                side: BorderSide(color: Color(0xFF909090)),
                                elevation: 0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Read More'),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            minimumSize: Size(114, 37),
                            backgroundColor: Color(0xFF264065),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32)),
                            ),
                            elevation: 0,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            SizedBox(height: 16),

            // New Messages Section
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('New Messages',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  width: 328,
                  margin: EdgeInsets.only(bottom: 12),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              'https://th.bing.com/th/id/R.50b75a289fa726538066a479953a145a?rik=3jntFvTKUScxyg&pid=ImgRaw&r=0')),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('User Name',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Sure, we can proceed to negotiations here.',
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


