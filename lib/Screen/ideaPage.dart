import 'package:flutter/material.dart';
import 'package:hasab/Screen/addIdeaPage.dart';
import 'package:hasab/Services/api_services.dart';

class IdeaPage extends StatefulWidget {
  const IdeaPage({super.key});

  @override
  State<IdeaPage> createState() => _IdeaPageState();
}

class _IdeaPageState extends State<IdeaPage> {

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = ApiServices.fetchData();

 }

 late Future<List<dynamic>> data;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F9FF),
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
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) {
                return const AddIdeaPage();
              }));
        },
        backgroundColor: const Color(0xff264065),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Expanded(
        child:

        FutureBuilder<List<dynamic>>(
          future: data,
          builder: (context, snapshot) {
            return ListView.builder(
                itemBuilder: (context, index) {
                  return Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      height: 150,
                      width: double.infinity,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.lightbulb_circle,
                          ),

                          Text(
                            snapshot.data![index]['title'],

                          )
                        ],
                      ),
                    ),
                  );
                }
            );
          }

        ),
      )
    );
  }
}

