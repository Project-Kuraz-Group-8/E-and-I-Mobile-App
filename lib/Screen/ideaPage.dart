import 'package:flutter/material.dart';
import 'package:hasab/Screen/addIdeaPage.dart';

class IdeaPage extends StatefulWidget {
  const IdeaPage({super.key});

  @override
  State<IdeaPage> createState() => _IdeaPageState();
}

class _IdeaPageState extends State<IdeaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F9FF),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'My ideas',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton(
          onPressed:(){
            Navigator.push(context,
            MaterialPageRoute(builder: (context){
              return AddIdeaPage();
            }));
          },
        backgroundColor: const Color(0xff264065),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: const Column(
        children: [


        ],
      )
    );
  }
}
