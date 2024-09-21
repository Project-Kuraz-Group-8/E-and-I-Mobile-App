import 'package:flutter/gestures.dart';
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
  String password = '';
  String email = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 150,
              child: Text(
                textAlign: TextAlign.center,
                'Create an account',
                style: TextStyle(
                  fontSize: 36,
                  fontFamily: 'inter',
                ),
              ),
            ),

            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 10, bottom: 10),
                width: double.infinity,
                child: FloatingActionButton(
                  elevation: 0.1,
                  backgroundColor: const Color(0xffedf3f5),
                  onPressed: () {},
                  child: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/G.png',
                          width: 55,
                        ),
                        const Text(
                          'Google',
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
                  Expanded(child: Divider()),
                  Text(
                    '  or  ',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 10, bottom: 10),
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Name',
                  fillColor: const Color(0xffedf3f5),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                )),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 10, bottom: 10),
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Email',
                  fillColor: const Color(0xffedf3f5),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                )),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 10, bottom: 10),
                child: TextField(
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
                  onChanged: (value) {
                    password = value;
                  },
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 10, bottom: 10),
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Confirm password',
                  fillColor: const Color(0xffedf3f5),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                )),
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Checkbox(
                      value: isChecked,
                      checkColor: Colors.blue[900],
                      activeColor: const Color(0xffedf3f5),
                      onChanged: (bool? newValue) {
                        setState(() {
                          isChecked = newValue;
                        });
                      },
                    ),
                  ],
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(children: [
                      const TextSpan(
                        text: 'I agree to the ',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Terms of service',
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                        ),
                      ),
                      const TextSpan(
                        text: ' and ',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Privacy Policy.',
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(),
              child: FloatingActionButton(
                backgroundColor: Color(0xff264065),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: RouteSettings(
                            arguments: password,
                            //TODO pass multiple arguments
                          ),
                          builder: (context) {
                            return ProfileSetupScreen();
                          }));
                },
                child: const Text('Sign Up',
                    style: TextStyle(
                      fontFamily: 'inter',
                      fontSize: 25,
                      color: Colors.white,
                    )),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            Expanded(
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Do you have an account? ',
                      style: TextStyle(fontSize: 18,
                          fontFamily: 'inter',

                          color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Sign in',
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      style: const TextStyle(
                        color: Colors.blue,
                        fontFamily: 'inter',

                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
