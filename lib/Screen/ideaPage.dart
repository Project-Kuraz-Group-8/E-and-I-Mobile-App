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
    return SingleChildScrollView(
      child: Scaffold(
        appBar: AppBar(

          title:  Row(
            children: [
              IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30,
              ),
                onPressed: (){
                Navigator.pop(context);
                },
        ),
              const Center(
                child: Text(
                  'My ideas',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed:(){
              Navigator.push(context,
              MaterialPageRoute(builder: (context){
                return const AddIdeaPage();
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
            Center(
              child: Text(
                'Ideas',

              )
            ),

          ],
        )
      ),
    );
  }
}
