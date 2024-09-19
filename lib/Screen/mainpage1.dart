import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavigationExample(),
    );
  }
}

class BottomNavigationExample extends StatefulWidget {
  @override
  _BottomNavigationExampleState createState() =>
      _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    Center(child: Text('Home')),
    PeopleScreen(),
    Center(child: Text('Ideas')),
    Center(child: Text('Inbox')),
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
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        backgroundColor: Color(0xFFFFFFFF), // Navigation bar color #FFFFFF
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'People',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_outline),
            label: 'Ideas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Inbox',
          ),
        ],
      ),
    );
  }
}

class PeopleScreen extends StatefulWidget {
  @override
  _PeopleScreenState createState() => _PeopleScreenState();
}

class _PeopleScreenState extends State<PeopleScreen> {
  bool _showInvestors = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'People',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildFilterButton(
                  label: 'Investors',
                  isActive: _showInvestors,
                  onPressed: () {
                    setState(() {
                      _showInvestors = true;
                    });
                  },
                ),
                _buildFilterButton(
                  label: 'Co-founders',
                  isActive: !_showInvestors,
                  onPressed: () {
                    setState(() {
                      _showInvestors = false;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                suffixIcon: CustomMinusIcon(),
                hintText: 'Search',
                filled: true,
                fillColor: Colors.white, // #FFFFFF for input box
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            _showInvestors ? _buildInvestorsList() : _buildCoFoundersList(),
          ],
        ),
      ),
      backgroundColor: Color(0xFFF5F9FF), // Blue-white tone for background
    );
  }

  Widget _buildFilterButton({
    required String label,
    required bool isActive,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: isActive
            ? Colors.white // White text for active button
            : Colors.black,
        backgroundColor: isActive
            ? Color(0xFF264065) // Active color #264065
            : Color(0xFFD9D9D9),
        fixedSize: Size(156, 40), // Fixed width (156px) and height (40px)
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
      ),
      child: Text(label),
    );
  }

  Widget _buildInvestorsList() {
    return Expanded(
      child: ListView.builder(
        itemCount: 5, // Replace with actual data
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              width: 331, // Fixed width (331px)
              height: 124, // Fixed height (106px)
              padding: const EdgeInsets.fromLTRB(8, 12, 8, 8), // Adjusted gap from top
              decoration: BoxDecoration(
                color: Colors.white, // #FFFFFF for profile container
                borderRadius: BorderRadius.all(
                  Radius.circular(16.0), // Border-radius (16px, 0px, 0px, 0px)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25, // width and height of CircleAvatar (50px)
                        backgroundImage: NetworkImage(
                            'https://via.placeholder.com/150'), // Replace with actual image
                      ),
                      SizedBox(width: 12), // No gap between avatar and name
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start, // Align name to the start
                          children: [
                            Text(
                              'Yohannes Zewdu',
                              style: TextStyle(
                                fontSize: 18, // Larger font size for investor name
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight, // Align the 3 dots to the top right corner
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0, right: 8.0),
                          child: IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {
                              // Profile actions
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(), // Push the buttons to the bottom of the container
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end, // Align buttons to the left
                    children: [
                      _buildSkillButton('Design', color: Colors.white),
                      SizedBox(width: 5), // 4px gap between the first two buttons
                      _buildSkillButton('User Experience', color: Colors.white),
                      SizedBox(width: 9),
                      _buildSkillButton(
                        'Seed',
                        color: Color(0xFFEFE0F5), // Color for "Seed" button
                        textColor: Color(0xFFC76CEC),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildCoFoundersList() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recommended for you',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 280, // Height for the profile container
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3, // Replace with actual data
              itemBuilder: (context, index) {
                return Container(
                  width: 212.85, // Set width Hug (212.85px)
                  height: 280, // Set height Hug (280px)
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF), // Background color #FFFFFF
                    borderRadius: BorderRadius.all(
                       Radius.circular(16),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage:
                            NetworkImage('https://via.placeholder.com/150'),
                          ),
                          Column(
                            children: [
                              Text(
                                'Henok Tesfaye',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.location_on, size: 16),
                                  SizedBox(width: 4),
                                  Text('New York, USA'),
                                ],
                              ),
                            ],
                          ),

                        ],
                      ),
                      SizedBox(height: 8),
                      Text('Lorem ipsum dolor sit amet consectetur. Amet tellus sit magnis velit. adipiscing ipsum facilisi malesuada.'),
                      Divider(color: Colors.grey),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildSkillButton('Design', color: Color(0xFFFFFFFF)),
                          _buildSkillButton(
                            'User Experience',
                            color: Color(0xFFFFFFFF),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildSkillButton(
                            'Connect',
                            color: Color(0xFF264065),
                            textColor: Colors.white,
                          ),
                          _buildSkillButton(
                            'View Profile',
                            color: Color(0xFFD9D9D9),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Connected',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Expanded(
            child: ListView.builder(
              itemCount: 3, // Replace with actual data
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    width: 328, // Set width 328px
                    height: 82, // Set height 82px
                    padding: const EdgeInsets.fromLTRB(13, 8, 6, 0),
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF), // Background color #FFFFFF
                      borderRadius: BorderRadius.all(
                         Radius.circular(16),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage(
                                  'https://via.placeholder.com/150'),
                            ),
                            SizedBox(width: 8,),
                            Text('Hemen Daniel',style: TextStyle(fontSize: 25),),
                            SizedBox(width: 70,),
                            Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                icon: Icon(Icons.more_vert),
                                onPressed: () {
                                  // Action for the three dots button
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 4),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Row(
                              children: [
                                SizedBox(width: 50,),
                                Icon(Icons.access_time, size: 16),
                                SizedBox(width: 4),
                                Text(
                                  'Active',
                                  style: TextStyle(
                                    color: Color(0xFF0DADF2), // Text color for "Active"
                                    backgroundColor: Color(0xFFECFAFD),
                                  ),
                                ),
                                SizedBox(width: 50),

                              ],
                            ),

                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 4, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF8EDCD), // Background color for text
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.lightbulb_outline,
                                        size: 16,
                                        color: Color(0xFFEBC351), // Icon color
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        '3',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillButton(
      String label, {
        Color? color,
        Color? textColor,
      }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: color ?? Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: textColor ?? Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class CustomMinusIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 16,
            height: 2,
            color: Colors.black,
          ),
          SizedBox(height: 4),
          Container(
            width: 12,
            height: 2,
            color: Colors.black,
          ),
          SizedBox(height: 4),
          Container(
            width: 8,
            height: 2,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
