import 'package:flutter/material.dart';


class FounderPage extends StatelessWidget {
  const FounderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'inter'),
      home: const FounderHomePage(),
    );
  }
}


class FounderHomePage extends StatefulWidget {
  const FounderHomePage({super.key});

  @override
  State<FounderHomePage> createState() => _FounderHomePageState();
}

class _FounderHomePageState extends State<FounderHomePage> {
  String firstName = 'Hiwot';
  String lastName = 'Tadesse';
  var profileViews = 0;
  var ratings = 0;
  var comments = 0;
  var amountInvested = 0;
  var investorRequest = 0;
  var pitchDeckViews = 0;
  var newRequests = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
        
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            decoration: BoxDecoration(
              color: Color(0xffF5F9FF),
              border: null,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 0.5,
                  blurRadius: 0.5,
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hello!',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
          
                        const SizedBox(
                          height: 10,
                        ),
          
                        Text(
                          '$firstName $lastName',
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      radius:40,
                      backgroundImage: AssetImage(
                        'images/avatar.png',
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ],
                ),
          
                const SizedBox(
                  height: 20,
                ),
          
                SizedBox(
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search',
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 30),
                            padding:
                                const EdgeInsets.only(top: 20, left: 20, right: 10),
                            decoration: BoxDecoration(
                              color: const Color(0xffa9d6cb),
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 0.5,
                                  blurRadius: 0.5,
                                )
                              ],
                            ),
                            height: 120,
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Profile Views',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontFamily: 'inter',
                                      ),
                                    ),
                                    Text(
                                      '$profileViews',
                                      style: const TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset('images/search.png'),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            padding:
                                const EdgeInsets.only(left: 15, top: 20, right: 10),
                            decoration: BoxDecoration(
                              color: const Color(0xffE2AAF9),
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 0.5,
                                  blurRadius: 0.5,
                                )
                              ],
                            ),
                            height: 277,
                            width: double.maxFinite,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Text(
                                        'Engagements',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      const Text(
                                        'Ratings',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        '$ratings',
                                        style: const TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
          
                                      const Text(
                                        'Comments',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        '$comments',
                                        style: const TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Image.asset('images/rating.png'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
          
                    const SizedBox(
                      width:15,
                    ),
          
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            //AMOUNT INVESTED
                      
                            margin: const EdgeInsets.only(
                              top: 30,
                            ),
                            padding:
                                const EdgeInsets.only(top: 10, left: 16, right: 10),
                            height: 125,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 0.5,
                                  blurRadius: 0.5,
                                )
                              ],
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xff264065),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      width: 100,
                                      child: Text(
                                        'Amount Invested',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '$amountInvested',
                                      style: const TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      'images/coins.png',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            //INVESTOR REQUESTS
                            margin: const EdgeInsets.only(
                              top: 15,
                            ),
                            padding:
                                const EdgeInsets.only(top: 10, left: 15, right: 10),
                            height: 125,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 0.5,
                                  blurRadius: 0.5,
                                )
                              ],
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xffA3D1ED),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      width: 100,
                                      child: Text(
                                        'Investor Requests',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '$investorRequest',
                                      style: const TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [Image.asset('images/question.png')],
                                )
                              ],
                            ),
                          ),
                          Container(
                            // PITCH DECK VIEWS
                            margin: const EdgeInsets.only(
                              top: 15,
                            ),
                            padding:
                                const EdgeInsets.only(top: 10, left: 15, right: 10),
                            height: 125,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  spreadRadius: 0.5,
                                  blurRadius: 0.5,
                                )
                              ],
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xff5C98EE),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      width: 100,
                                      child: Text(
                                        'Pitch deck views',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '$pitchDeckViews',
                                      style: const TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [Image.asset('images/dashboard.png')],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: const Text(
                        'New Requests',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xff264065),
          
                      ),
                      child: Text('$newRequests',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontFeatures: [FontFeature.superscripts()],
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
          
                          )),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
