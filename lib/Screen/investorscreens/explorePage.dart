import 'package:flutter/material.dart';
import 'package:hasab/Screen/investorscreens/viewIdea.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
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
                          onPressed: () {

                          Navigator.push(context,
                          MaterialPageRoute(builder: (context){
                            return const ViewIdea();
                          }));
                          },
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Tech',
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
                          onPressed: () {
                            ViewIdea();

                          },
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
          ],
        ),
      ),
    );
  }
}
