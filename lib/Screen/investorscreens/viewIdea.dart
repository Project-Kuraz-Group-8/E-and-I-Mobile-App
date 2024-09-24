import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hasab/Screen/investorscreens/Invest1.dart';


class ViewIdea extends StatefulWidget {
  const ViewIdea({super.key});

  @override
  State<ViewIdea> createState() => _ViewIdeaState();
}


class _ViewIdeaState extends State<ViewIdea> {

  var dropDownItem=['Problem', 'Solution', 'Value Proposition', 'Financials', 'Meet our team'];
  var selectedItem = 'Problem';


  var ideaTitle = 'idea title';
  var contract = 'Future Equity';
  var investedAmount = 0;
  var startUpCity = 'Addis Ababa, Ethiopia';
  var startUpWebSite = 'google';
  var companyCategory = 'tech';
  var startUpDescription = 'description';
  var coverPhoto = const AssetImage('images/brokenImage');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Center(
                child: Text(ideaTitle,
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.fromLTRB(15, 10, 15, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 160,
                      width: double.maxFinite,
                      child: Image(
                        image: AssetImage('images/brokenImage.png'),
                        fit: BoxFit.fill,
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          startUpCity,
                          style: const TextStyle(
                            fontSize: 14,
                          ),

                        ),

                        Text(
                          startUpWebSite,
                          style: const TextStyle(
                            fontSize: 14,
                          ),

                        )
                      ],
                    ),

                    const SizedBox(
                      height: 5,
                    ),

                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black12,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            companyCategory,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black45,
                            ),
                          ),
                        ),

                        const SizedBox(
                          width: 15,
                        ),

                        const Icon(
                          FontAwesomeIcons.facebookF,
                          size: 14,
                        ),

                        const SizedBox(
                          width: 15,
                        ),

                        const Icon(
                          FontAwesomeIcons.linkedinIn,
                          size: 14,
                        ),

                        const SizedBox(
                          width: 15,
                        ),

                        const Icon(
                          FontAwesomeIcons.xTwitter,
                          size: 14,
                        ),

                      ],
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    Text(
                      'Invest in $ideaTitle',
                      style: const TextStyle(
                        fontSize: 23,
                        height: 2,
                      ),
                    ),

                    Text(
                      startUpDescription,
                      style: const TextStyle(
                        fontSize: 18,
                        height: 1.5,
                      ),
                    ),

                    Center(
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(25),

                          width: 280,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              border: Border.all(
                                color: Colors.blue,
                                width: 0.5,
                              )

                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '50,000br',
                                    style: TextStyle(
                                      fontSize: 25,

                                    ),
                                  ),

                                  Text(
                                    'of a 500,000br total',
                                    style: TextStyle(
                                      fontSize: 16,

                                    ),
                                  ),

                                ],
                              ),

                              const SizedBox(
                                height: 15,
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [

                                  SizedBox(
                                    width: 80,
                                    child: RichText(
                                      text: const TextSpan(
                                        children: [

                                          TextSpan(
                                            text: 'Invest ',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                            ),
                                          ),

                                          TextSpan(
                                            text: ' min 200br',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black,
                                              height: 1.5,

                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    width: 150,
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      style: const TextStyle(
                                        fontSize: 20,
                                      ),
                                      onChanged: (value) {
                                        investedAmount = value as int;
                                      },

                                      decoration: InputDecoration(
                                          contentPadding: const EdgeInsets
                                              .symmetric(
                                              vertical: 10, horizontal: 10),
                                          filled: true,
                                          fillColor: const Color(0xffF1F5FD),
                                          hintText: 'br',
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                            borderRadius: BorderRadius.circular(
                                                15),
                                          )
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(
                                height: 20,
                              ),

                              Container(
                                margin: const EdgeInsets.symmetric(
                                  vertical: 15,
                                ),
                                width: double.infinity,
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: const Color(0xff264065)
                                ),
                                child: TextButton(
                                    onPressed: () {

                                      Navigator.push(context,
                                      MaterialPageRoute(builder: (context){
                                        return Invest1();
                                      }));
                                    },
                                    child:
                                    const Text(
                                        'Invest',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 25,
                                          color: Colors.white,
                                        )
                                    )),

                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  const Text(
                                    'Investment terms',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),

                                  ),

                                  Text(
                                    contract,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),

                            ],
                          )
                      ),
                    ),

                    const Text(
                      'Pitch',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),

                    //TODO attach the pitch file here

                    //TODO add nav bar



                    SizedBox(
                      width: 120,
                      child: TextButton(
                        onPressed: () {
                          showModalBottomSheet(context: context,

                              builder: (BuildContext context) {
                                return SingleChildScrollView(
                                  child: SizedBox(
                                      width: 200,
                                      child:
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              TextButton(
                                                onPressed: () {
                                  
                                                },
                                                child:
                                                const Text(
                                                  textAlign: TextAlign.start,
                                                  'Problem',
                                  
                                                ),
                                              ),
                                  
                                              TextButton(
                                                onPressed: () {
                                  
                                                },
                                                child:
                                                const Text(
                                                  'Solution',
                                  
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                  
                                                },
                                                child: const Text(
                                                  'Value Proposition',
                                  
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                  
                                                },
                                                child: const Text(
                                                  'Finances',
                                  
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                  
                                                },
                                                child: const Text(
                                                    'Meet our team'
                                  
                                                ),
                                              ),
                                  
                                            ],
                                  
                                          ),
                                  
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              IconButton(
                                                  onPressed: () {

                                                Navigator.pop(context);

                                              },

                                                  icon: const Icon(Icons.close)
                                              ),
                                            ],
                                          ),

                                        ],
                                      )

                                  ),
                                );
                              });
                        },

                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Problem',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_up_outlined,
                              size: 20,),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
        ));
  }

}
