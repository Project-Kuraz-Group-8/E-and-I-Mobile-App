import 'package:flutter/material.dart';
import 'package:hasab/Screen/ProfileSet.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  bool? isChecked = false;
  bool showPassword = false;
  String password= '';
  String email='';


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Create an',
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'inter',

                  ),
                ),
              ),
              const Center(
                child: Text(
                  'account',
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'inter',


                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left:10,right:10,top:10,bottom:10),
                  width: double.infinity,
                  child: FloatingActionButton(
                    elevation: 0.1,
                    backgroundColor: const Color(0xffedf3f5),
                    onPressed: (){

                    },
                    child:
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('images/G.png',
                            width: 55,),
                          const Text('Google',
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: 'inter',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: Divider()
                    ),
                    Text('  or  ',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Expanded(
                        child: Divider()
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left:10, right:10, top:10, bottom:10),
                  child:  TextField(
                      decoration: InputDecoration(
                        hintText: 'Name',
                        fillColor: const Color(0xffedf3f5),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      )
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left:10, right:10, top:10, bottom:10),
                  child:  TextField(

                      decoration: InputDecoration(

                        hintText: 'Email',
                        fillColor: const Color(0xffedf3f5),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                      )
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left:10, right:10, top:10, bottom:10),
                  child:  TextField(
                    obscureText: !showPassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      fillColor: const Color(0xffedf3f5),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(showPassword
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                                () {
                              showPassword = !showPassword;
                            },
                          );
                        },
                      ),
                    ),
                    onChanged: (value){
                      password=value;
                    },
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left:10, right:10, top:10, bottom:10),
                  child:  TextField(

                      decoration: InputDecoration(
                        hintText: 'Confirm password',
                        fillColor: const Color(0xffedf3f5),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),

                      )
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    checkColor: Colors.blue[900],
                    activeColor: const Color(0xffedf3f5),
                    onChanged: (bool? newValue){
                      setState(() {
                        isChecked = newValue;
                      });
                    },
                  ),

                  const Text(
                    'I agree to the ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black
                    ),
                  ),

                  TextButton(
                    child:
                    const Text('Terms of service',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,

                      ),),
                    onPressed: (){

                    },
                  ),
                  const Text( ' and ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black
                    ),
                  ),
                  TextButton(
                    child: const Text(
                      'Privacy Policy.',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,

                      ),
                    ),
                    onPressed: (){

                    },
                  ),

                ],
              ),


              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: FloatingActionButton(
                    backgroundColor: Colors.blue[900],
                    onPressed: (){

                      Navigator.push(context,
                      MaterialPageRoute(
                        settings: RouteSettings(
                          arguments: password,
                            //TODO pass multiple arguments
                        ),
                          builder: (context){
                        return ProfileSetupScreen();
                      }));


                    },
                    child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'inter',
                          fontSize: 25,
                          color: Colors.white,
                        )
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                        'Do you have an account?',
                        style: TextStyle(
                          fontSize: 20,
                        )
                    ),
                    TextButton(
                        onPressed: (){

                        },
                        child: const Text(
                            'Sign in',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                            )
                        )
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}

