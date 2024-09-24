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
                            Text('All'),
                            Text('Cofounders'),
                            Text('Investors')
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
                        selectedColor: Color(0xff264065),
                        disabledColor: Color(0xffA9D6CBB2),
                        constraints: BoxConstraints(
                          minHeight: 40,
                          minWidth: 100,
                        ),
                      )
                    ],
                  )
                ],
              ),
        
            )
        ),
      )

    );
  }
}

