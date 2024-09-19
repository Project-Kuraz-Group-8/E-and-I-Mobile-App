import 'package:flutter/material.dart';

class AddIdeaPage extends StatefulWidget {
  const AddIdeaPage({super.key});

  @override
  State<AddIdeaPage> createState() => _AddIdeaPageState();
}

class _AddIdeaPageState extends State<AddIdeaPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
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
                  'Create an idea',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Text(
                "Let's start creating your business idea",
                style: TextStyle(
                  color: Colors.black,

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
