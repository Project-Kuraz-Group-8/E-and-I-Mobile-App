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
            // Curved input box with custom icon
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
            : Colors.black, backgroundColor: isActive
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
                      Row(
                        children: [
                          _buildSkillButton('Design', color: Colors.white, width: 66, height: 17,borderRadius: BorderRadius.circular(75.0),),
                          SizedBox(width: 5), // 4px gap between the first two buttons
                          _buildSkillButton('User Experience', color: Colors.white, width: 115, height: 17,borderRadius: BorderRadius.circular(75.0),),
                        ],
                      ),
                      SizedBox(width: 9,),
                      _buildSkillButton(
                        'Seed',
                        color: Color(0xFFEFE0F5), // Color for "Seed" button
                        textColor: Color(0xFFC76CEC),
                        width: 66, // Width: 78px
                        height: 17,
                        borderRadius: BorderRadius.all(
                          Radius.circular(14.0), // Border-radius (16px, 0px, 0px, 0px)
                        ),// Height: 32px
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
    return Center(child: Text('Co-founders list'));
  }

  Widget _buildSkillButton(String label, {
    required Color color,
    Color? textColor,
    required double width,
    required double height, required  BorderRadius borderRadius,
  }) {
    return ElevatedButton(
      onPressed: () {
        // Add functionality for each button here
        if (label == 'Design') {
          print('Design button pressed');
        } else if (label == 'User Experience') {
          print('User Experience button pressed');
        } else if (label == 'Seed') {
          print('Seed button pressed');
        }
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor ?? Colors.black, backgroundColor: color,
        fixedSize: Size(width, height), // Dynamic width and height
        padding: EdgeInsets.symmetric(horizontal: 9, vertical: 6), // Padding
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius, // Border-radius (75px on left side)
          side: BorderSide(
            color: Color(0xFF909090), // Border color #909090
            width: 0.75,
          ),
        ),
      ),
      child: Text(label),
    );
  }
}

// Custom icon for three minus symbols decreasing in size
class CustomMinusIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container
          (width: 20, height:
        2, color: Colors.black),
        SizedBox(height: 4),
        Container(width: 16, height: 2, color: Colors.black),
        SizedBox(height: 4),
        Container(width: 12, height: 2, color: Colors.black),
      ],
    );
  }
}
