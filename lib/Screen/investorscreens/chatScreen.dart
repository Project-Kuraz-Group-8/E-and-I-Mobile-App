import 'package:flutter/material.dart';
import 'package:hasab/Services/api_services.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  List<bool> selected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: const Color(0xffF5F9FF),

      body: SafeArea(
        child: SingleChildScrollView(
          child:
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius:40,
                        backgroundImage: AssetImage(
                          'images/avatar.png',
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      Text(
                        'Hiwot Tadesse',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ToggleButtons(
                          children: [
                            Text('All',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            ),
                            Text('Cofounders',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                            ),
                            Text('Investors',
                                style: TextStyle(
                                  color: Colors.white,
                                ))
                          ],
                          isSelected: selected,
                      onPressed: (int index){
                            setState(() {
                              selected[index]=!selected[index];
                              for (int i = 0; i < selected.length; i++) {
                              selected[i] = i == index;
                              }

                            });
                      },
                        selectedColor: Colors.blue[900],
                        disabledColor: Color(0xffA9D6CBB2),
                        constraints: BoxConstraints(
                          minHeight: 40,
                          minWidth: 100,
                        ),
                      ),
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
                            TextButton(
                              onPressed:(){

                             },
                              child: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: NetworkImage(
                                      'https://th.bing.com/th/id/R.50b75a289fa726538066a479953a145a?rik=3jntFvTKUScxyg&pid=ImgRaw&r=0')),
                            ),
                            SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Abebe',
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
        
            )
        ),
      )

    );
  }
}

