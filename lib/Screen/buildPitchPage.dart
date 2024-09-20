import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BuildPitchPage extends StatefulWidget {
  const BuildPitchPage({super.key});

  @override
  State<BuildPitchPage> createState() => _BuildPitchPageState();
}

class _BuildPitchPageState extends State<BuildPitchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
                  'Build your pitch',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
        )
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
                    "Well done! Now you can build your pitch",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),

              Text(
                'Basics',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),

              SizedBox(
                height: 15,
              ),

              TextField(
                onChanged: (value){
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffF1F5FD),
                    labelText: 'Company name',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),

              SizedBox(
                height: 15,
              ),

              TextField(
                onChanged: (value){
                },
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffF1F5FD),
                    labelText: 'Tagline',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),

              SizedBox(
                height: 25,
              ),

              Text(
                'Main Image',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Text(
                'This is to show off your start-up for investors and other founders.',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

            ],
          )
        )

      ),
    );
  }
}
