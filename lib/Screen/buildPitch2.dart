import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:hasab/Screen/ideaPage.dart';
import 'package:hasab/Screen/investorscreens/viewIdea.dart';

class BuildPitch2 extends StatefulWidget {
  const BuildPitch2({super.key});

  @override
  State<BuildPitch2> createState() => _BuildPitch2State();
}

enum InvestmentContract {
  futureEquity,
  convertibleNote,
  revenueShare,
  simpleLoan,
  preferredStock,
  other
}

class _BuildPitch2State extends State<BuildPitch2> {
  InvestmentContract? contract = InvestmentContract.futureEquity;
  FilePickerResult? result;
  String newMemberEmail= '';
  String newMemberName= '';



  var firstName = 'Hiwot';
  var lastName = 'Tadesse';
  var email = 'hiwottadesse3@gmail.com';
  var role = 'Founder';
  var founderTitle;
  var founderAccomplishments;
  File? file;

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
      )),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          padding: const EdgeInsets.only(
            bottom: 80,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Pitch',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'You can upload your pitch deck here. They will be converted into images and will be included in your story.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Container(
                width: double.infinity,
                height: 120,
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white60,
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Colors.lightBlueAccent,
                      width: 0.4,
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Upload your pitch deck here',
                        style: TextStyle(
                          height: 1.5,
                          fontSize: 15,
                          color: Colors.black,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'accepted files: .ppt, .pptx, .pdf - max 100MB',
                      style: TextStyle(
                        fontSize: 14,
                        height: 2,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    GestureDetector(
                      onTap: () {

                        getFile();

                      },
                      child: const Text(
                        'Browse files',
                        style: TextStyle(
                          fontSize: 14,
                          height: 2,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  //TODO display file name

                  ],
                ),
              ),
              const Text(
                'Team',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Add the core members of your start-up team. Every member should have a photo and some kind of accomplishment.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(vertical: 15),
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colors.lightBlueAccent,
                      width: 0.6,
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            'images/avatar.png',
                          ),
                          backgroundColor: Colors.transparent,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '$firstName $lastName ',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  height: 1.5,
                                ),
                              ),
                              Text(
                                '$email ',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  height: 1.5,
                                ),
                              ),
                              Text(
                                role,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  height: 1.5,
                                ),
                              ),
                            ]),
                      ],
                    ),
                    TextField(
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      onChanged: (value) {
                        founderTitle=value;
                        },
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 10),
                          filled: true,
                          fillColor: const Color(0xffF1F5FD),
                          labelText: 'Title at company',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      onChanged: (value) {
                        founderAccomplishments=value;
                      },
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 10),
                          filled: true,
                          fillColor: const Color(0xffF1F5FD),
                          labelText: 'Accomplishments',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15),
                          )),
                    ),
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {
                    addTeamMember();
                  },
                  style: TextButton.styleFrom(
                      minimumSize: const Size(210, 40),
                      maximumSize: const Size(250, 40),

                      side: const BorderSide(
                        color: Colors.black,
                      )),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.add_circle_outline_sharp,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Add team member',
                          style: TextStyle(
                            fontSize: 18,
                          ))
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Funding',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Minimum raise',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 20,
                  height: 2,
                ),
              ),
              const Text(
                'What is the minimum you are willing to accept?',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 18,
                  height: 2,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                style: const TextStyle(
                  fontSize: 20,
                ),
                onChanged: (value) {},
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 10),
                    filled: true,
                    fillColor: const Color(0xffF1F5FD),
                    hintText: '500br',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Terms',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 30,
                  height: 2,
                ),
              ),
              const Text(
                'Choose an investment contract',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 18,
                  height: 2,
                ),
              ),
              ListTile(
                title: const Text('Future Equity'),
                leading: Radio<InvestmentContract>(
                  value: InvestmentContract.futureEquity,
                  groupValue: contract,
                  onChanged: (InvestmentContract? value) {
                    setState(() {
                      contract = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Convertible Note'),
                leading: Radio<InvestmentContract>(
                  value: InvestmentContract.convertibleNote,
                  groupValue: contract,
                  onChanged: (InvestmentContract? value) {
                    setState(() {
                      contract = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Revenue Share'),
                leading: Radio<InvestmentContract>(
                  value: InvestmentContract.revenueShare,
                  groupValue: contract,
                  onChanged: (InvestmentContract? value) {
                    setState(() {
                      contract = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Simple Loan'),
                leading: Radio<InvestmentContract>(
                  value: InvestmentContract.simpleLoan,
                  groupValue: contract,
                  onChanged: (InvestmentContract? value) {
                    setState(() {
                      contract = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Preferred Stock'),
                leading: Radio<InvestmentContract>(
                  value: InvestmentContract.preferredStock,
                  groupValue: contract,
                  onChanged: (InvestmentContract? value) {
                    setState(() {
                      contract = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text("Other/I don't know yet"),
                leading: Radio<InvestmentContract>(
                  value: InvestmentContract.other,
                  groupValue: contract,
                  onChanged: (InvestmentContract? value) {
                    setState(() {
                      contract = value;
                    });
                  },
                ),
              ),

              Center(
                child: Container(
                  margin: const EdgeInsets.only(
                    bottom: 30, top: 20,
                  ),
                  width: 188,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xff264065)
                  ),
                  child: TextButton(
                      onPressed: (){
                        Navigator.push(context,
                            MaterialPageRoute(
                                settings: RouteSettings(
                                  arguments: {'$file', '$founderTitle'},
                                ),
                                builder: (context){
                              return const ViewIdea();

                            }));

                      },
                      child:
                      const Text(
                          'Save Changes',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Colors.white,

                          )
                      )),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

  void addTeamMember() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 300,
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Full name',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextField(
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                  onChanged: (value) {
                    newMemberName=value;
                  },
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                      filled: true,
                      fillColor: const Color(0xffF1F5FD),
                      labelText: 'Name',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
                const Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextField(
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                  onChanged: (value) {
                    newMemberEmail=value;
                  },
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                      filled: true,
                      fillColor: const Color(0xffF1F5FD),
                      labelText: 'email',
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff264065),
                        fixedSize: const Size(double.maxFinite, 50)),
                    child: const Text(
                      'Add member',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    )),
              ],
            ),
          );
        });
  }

  Future getFile() async{
    FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.custom,
      allowedExtensions: ['ppt', 'pptx', 'pdf'],
    );
    if (result != null) {

      setState(() {

        file = File(result.files.single.path!);

      });
    }
    else
      {
        const Text('No file selected');
      }
  }

}
