import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hasab/Screen/buildPitch2.dart';
import 'package:hasab/Services/permissionHandler.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:video_player/video_player.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BuildPitchPage extends StatefulWidget {
  const BuildPitchPage({super.key});

  @override
  State<BuildPitchPage> createState() => _BuildPitchPageState();
}

class _BuildPitchPageState extends State<BuildPitchPage> {

  File? coverPhoto ;
  File? logo ;
  File? video;
  VideoPlayerController? videoPlayer;
  final ImagePicker imagePicker  = ImagePicker();

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
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Center(
                child: Container(
                  width: 270,
                  margin: const EdgeInsets.only(top:25, bottom: 30),
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

              const Text(
                'Basics',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              TextField(
                style: const TextStyle(
                  fontSize: 20,
                ),
                onChanged: (value){
                },
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10),
                    filled: true,
                    fillColor: const Color(0xffF1F5FD),
                    labelText: 'Company name',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              TextField(
                style: const TextStyle(
                  fontSize: 20,
                ),
                onChanged: (value){
                },
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 25.0, horizontal:10),
                    filled: true,
                    fillColor: const Color(0xffF1F5FD),
                    labelText: 'Tagline',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              const Text(
                'Main Image',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              const Text(
                'This is to show off your start-up for investors and other founders.',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

            Container(
              width: double.infinity,
              height: 180,
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(

                color: Colors.white60,
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Colors.lightBlueAccent,
                  width: 0.4,
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                          'Upload a cover photo ',
                          style: TextStyle(
                            height: 1.5,
                            fontSize: 22,
                            color: Colors.black,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          )
                        ),

                        const Text(
                            '1200 x 675(suggested) ',
                            style: TextStyle(
                              fontSize: 20,
                              height: 1.5,
                              color: Colors.black,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            )
                        ),

                        GestureDetector(
                          onTap: ()async{

                            await getImageFromGallery();

                          },
                          child: const Text(
                              'Browse files',
                              style: TextStyle(
                                fontSize: 18,
                                height: 2,
                                color: Colors.black54,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                              ),

                          ),
                        ),

                      coverPhoto==null ? const Text('Cover image not selected',style: TextStyle(color:Colors.red,height: 1.5,),) : Text('Cover photo uploaded',style: TextStyle(color:Colors.green,height: 1.5,)),

                      ]
                    ),
            ),

              const Text(
                'Video',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              const Text(
                'Upload a video about your start-up to create live connection with investors.',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              Container(
                width: double.infinity,
                height: 250,
                margin: const EdgeInsets.symmetric( vertical: 20),
                decoration: BoxDecoration(

                    color: Colors.white60,
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Colors.lightBlueAccent,
                      width: 0.4,
                    )
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                          'Upload a video',
                          style: TextStyle(
                            height: 1.5,
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          )
                      ),

                      const Text(
                          'mp4-Max 200MB',
                          style: TextStyle(
                            fontSize: 18,
                            height: 1.5,
                            color: Colors.black,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          )
                      ),

                      GestureDetector(
                        onTap: ()async {
                          await getVideoFromGallery();
                        },
                        child: const Text(
                          'Browse files',
                          style: TextStyle(
                            fontSize: 16,
                            height: 2,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                          ),

                        ),
                      ),

                      video==null ? const Text('Video not selected',style: TextStyle(color:Colors.red,height: 1.5,),) : Text('Video uploaded',style: TextStyle(color:Colors.green,height: 1.5,)),



                    ]
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              const Text(
                'Start-up HQ',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              const SizedBox(
                height: 15,
              ),


              TextField(
                style: const TextStyle(
                  fontSize: 20,
                ),
                onChanged: (value){
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.location_on_outlined),
                    contentPadding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10),
                    filled: true,
                    fillColor: const Color(0xffF1F5FD),
                    labelText: 'Addis Ababa',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              const Text(
                'Links',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              TextField(
                style: const TextStyle(
                  fontSize: 20,
                ),
                onChanged: (value){
                },
                decoration: InputDecoration(
                    prefixIcon: const Icon(FontAwesomeIcons.linkedinIn),
                    contentPadding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10),
                    filled: true,
                    fillColor: const Color(0xffF1F5FD),
                    labelText: 'LinkedIn',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              TextField(
                style: const TextStyle(
                  fontSize: 20,
                ),
                onChanged: (value){
                },
                decoration: InputDecoration(
                    prefixIcon: const Icon(FontAwesomeIcons.xTwitter),
                    contentPadding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10),
                    filled: true,
                    fillColor: const Color(0xffF1F5FD),
                    labelText: 'Twitter',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              TextField(
                style: const TextStyle(
                  fontSize: 20,
                ),
                onChanged: (value){
                },
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.facebook_outlined),
                    contentPadding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10),
                    filled: true,
                    fillColor: const Color(0xffF1F5FD),
                    labelText: 'Facebook',
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              const Text(
                'Logo',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),

              Container(
                width: 156,
                height: 120,
                margin: const EdgeInsets.symmetric( vertical: 20),
                decoration: BoxDecoration(

                    color: Colors.white60,
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Colors.lightBlueAccent,
                      width: 0.4,
                    )
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                          'Upload logo',
                          style: TextStyle(
                            height: 1.5,
                            fontSize: 15,
                            color: Colors.black,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          )
                      ),


                      GestureDetector(
                        onTap: ()async{

                          await getLogoFromGallery();

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


                      if (logo==null) const Text('Logo not selected',style: TextStyle(color:Colors.red,height: 1.5,),) else Text('Logo uploaded',style: TextStyle(color:Colors.green,height: 1.5,)),


                    ]
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
                            MaterialPageRoute(builder: (context){
                              return const BuildPitch2();

                            }));
                        //TODO
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
              )

            ],
          )
        )

      ),
    );
  }
//TODO create a bottom sheet with buttons gallery and camera  or delete getImageFromCamera
  Future getImageFromGallery ()async{

    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
    await PermissionHandler();

    setState(() {
      if(pickedFile!=null){
        coverPhoto = File(pickedFile.path);
      }
    });

  }

  Future getLogoFromGallery ()async{

    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
    await PermissionHandler();

    setState(() {
      if(pickedFile!=null){
        logo = File(pickedFile.path);
      }
    });

  }



  Future getVideoFromGallery ()async{

    final pickedFile = await imagePicker.pickVideo(
        source: ImageSource.gallery);
    await PermissionHandler();


    if (pickedFile!=null){
      setState(() {

        video = File(pickedFile.path);
        videoPlayer = VideoPlayerController.file(video!);
        videoPlayer!.play();

      });
    }

  }



}
