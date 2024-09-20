import 'package:flutter/material.dart';
import 'package:hasab/Screen/buildPitchPage.dart';

class AddIdeaPage extends StatefulWidget {
  const AddIdeaPage({super.key});

  @override
  State<AddIdeaPage> createState() => _AddIdeaPageState();
}

class _AddIdeaPageState extends State<AddIdeaPage> {

  List<bool> categories = List.generate(7, (_)=>false );

  var startUpCompanyName;
  var startUpWebSite;
  var startUpCity;
  var companyName;
  var companyCategory;
  var startUpDescription;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Create an idea',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           Center(
                child: Container(
                  width: 270,
                  margin: EdgeInsets.only(top:25, bottom: 30),
                  child: const Text(
                    textAlign: TextAlign.center,
                    "Let's start creating your business idea",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),

              const Text(
                '1. What is your start-up name?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),

                SizedBox(
                  height: 15,
                ),

                TextField(
                  onChanged: (value){
                    companyName=value;
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffF1F5FD),
                    hintText: 'Company name',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                  ),
                ),

              SizedBox(
                height: 15,
              ),

              const Text(
                "2. What is your start-up's website?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              TextField(
                onChanged: (value){
                  startUpWebSite=value;
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffF1F5FD),
                    prefixIcon: Icon(Icons.language),
                    hintText: 'https://',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),

              SizedBox(
                height: 15,
              ),

              const Text(
                "3. Where is your start-up based?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              TextField(
                //TODO suggest city name
                onChanged: (value){
                  startUpCity=value;
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffF1F5FD),
                    prefixIcon: const Icon(Icons.location_on_outlined),
                    hintText: 'Search your city',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),

              SizedBox(
                height: 15,
              ),

              const Text(
                "4. What is your company's name?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              TextField(
                onChanged: (value){
                  companyName=value;
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffF1F5FD),
                    hintText: 'Company name',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),

              SizedBox(
                height: 15,
              ),

              const Text(
                '5. How would you categorize your company?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),

              SizedBox(
                height: 15,
              ),

              Column(
                children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(
                    width: 90,
                        height: 90,
                    decoration: BoxDecoration(
                      color: Color(0xffF1F5FD),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextButton(

                      onPressed: (){
                        companyCategory='manufacture';
                    },
                        child:
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.factory_outlined,
                              color: Colors.black,
                            ),
                            Text(
                                'Manufacture',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),

                    ),
                  ),

                  Container(
                    width: 90,
                        height: 90,
                    decoration: BoxDecoration(
                      color: Color(0xffF1F5FD),borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextButton(
                      onPressed: (){
                        companyCategory='education';
                      },
                      child:
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.school_sharp,
                            color: Colors.black,
                          ),
                          Text(
                            'Education',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),

                    ),
                  ),

                   Container(
                    width: 90,
                        height: 90,
                     decoration: BoxDecoration(
                      color: Color(0xffF1F5FD), borderRadius: BorderRadius.circular(16),
                     ),
                    child: TextButton(
                      onPressed: (){
                        companyCategory='energy';
                      },
                      child:
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.energy_savings_leaf_sharp,
                            color: Colors.black,
                          ),
                          Text(
                            'Energy',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),

                    ),
                  ),

                  Container(
                    width: 100,
                        height: 90,
                    decoration: BoxDecoration(
                      color: Color(0xffF1F5FD),borderRadius: BorderRadius.circular(16),
                    ),
                    child: TextButton(
                      onPressed: (){
                        companyCategory='transportation';
                      },
                      child:
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.emoji_transportation_outlined,
                            color: Colors.black,
                          ),
                          Text(
                            'Transportation',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),

                    ),
                  ),
                  ],
              ),

                  const SizedBox(
                    height: 15,
                  ),

                  Row(
                    //TODO replace the TextButtons with ToggleButton
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      Container(
                        width: 100,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Color(0xffF1F5FD),    borderRadius: BorderRadius.circular(16),

                        ),

                        child: TextButton(

                          onPressed: (){
                            companyCategory='energy';

                          },
                          child:
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.energy_savings_leaf_sharp,
                                color: Colors.black,
                              ),
                              Text(
                                'Energy',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),

                        ),
                      ),

                      Container(
                        width: 100,
                        height: 90,
                        decoration: BoxDecoration(
                      color: Color(0xffF1F5FD),    borderRadius: BorderRadius.circular(16),

                        ),

                        child: TextButton(

                          onPressed: (){
                            companyCategory='energy';
                          },
                          child:
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.energy_savings_leaf_sharp,
                                color: Colors.black,
                              ),
                              Text(
                                'Energy',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),

                        ),
                      ),

                      Container(
                        width: 100,
                        height: 90,
                        decoration: BoxDecoration(
                      color: Color(0xffF1F5FD),    borderRadius: BorderRadius.circular(16),

                        ),
                        child: TextButton(

                          onPressed: (){
                            companyCategory='agriculture';
                          },
                          child:
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.yard_outlined,
                                color: Colors.black,
                              ),
                              Text(
                                'Agriculture',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              )
                            ],
                          ),

                        ),
                      ),
                    ],
                  ),



                ],
              ),

              SizedBox(
                height: 15,
              ),

              const Text(
                "6. What does your start-up do in simple words?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              TextField(
                onChanged: (value){
                  companyName=value;
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffF1F5FD),
                    hintText: 'e.g. Online hospital appointment',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),

              Container(
                margin: EdgeInsets.only(
                  bottom: 30, top: 20,
                ),
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xff264065)
                ),
                child: TextButton(
                    onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context){
                        return const BuildPitchPage();

                      }));
                      //TODO add idea
                    },
                    child:
                const Text(
                  'Done',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                    color: Colors.white,

                  )
                )),
              )

            ],
          ),
        ),
      ),
    );
  }
}
