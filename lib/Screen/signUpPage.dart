import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hasab/Screen/Role.dart';
import 'package:hasab/Services/api_services.dart';
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
  String name = '';
  String confirmPassword = '';
  String role = '';
  String location = '';
  String bio = '';
  String social_media_link = '';
  String phone_number = '';

  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<void> _signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

      if (googleAuth != null) {
        email = googleUser!.email;

        // Navigate to RoleSelectionPage
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RoleSelectionPage(),
            settings: RouteSettings(arguments: email),
          ),
        );
      }
    } catch (error) {
      print("Error signing in with Google: $error");
    }
  }

  void _signUp() {
    if (name.isEmpty || email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please fill in all fields')),
      );
      return;
    }

    if (password != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Passwords do not match')),
      );
      return;
    }

    // Proceed with the sign-up process
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RoleSelectionPage(),
        settings: RouteSettings(arguments: email),
      ),
    );
    print(name);
    print(email);
    print(password);

    ApiServices.sendingData(
      name,
      email,
      password,
      role,
      phone_number,
      social_media_link,
      location,
      bio,


    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 40),

              // Create an account title
              Container(
                width: 172,
                height: 88,
                alignment: Alignment.center,
                child: const Text(
                  'Create an account',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 36,
                    fontWeight: FontWeight.w400,
                    height: 1.22,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // Google Sign-In button
              GestureDetector(
                onTap: _signInWithGoogle,
                child: Container(
                  width: double.infinity,
                  height: 56,
                  padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F9FE),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/G.png',
                        width: 55,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Google',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Divider with or
              const Row(
                children: [
                  Expanded(child: Divider()),
                  Text(
                    '  or  ',
                    style: TextStyle(fontSize: 25),
                  ),
                  Expanded(child: Divider()),
                ],
              ),

              // Input fields
              _buildInputField('Name', false, (value) {
                name = value;
              }),
              _buildInputField('Email', false, (value) {
                email = value;
              }),
              _buildInputField('Password', true, (value) {
                password = value;
              }),
              _buildInputField('Confirm password', true, (value) {
                confirmPassword = value;
              }),

              // Terms and conditions
              Row(
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
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        children: [
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              // Sign Up button
              Container(
                width: double.infinity,
                height: 60,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff264065),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  onPressed: _signUp,
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              // Sign in prompt
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Do you have an account? ',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Inter',
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'Sign in',
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      style: const TextStyle(
                        color: Colors.blue,
                        fontFamily: 'Inter',
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(String hint, bool obscure, Function(String) onChanged) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
      child: TextField(
        obscureText: obscure && !showPassword,
        decoration: InputDecoration(
          hintText: hint,
          fillColor: const Color(0xFFF1F5FD),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          hintStyle: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            color: Color(0xFF909090),
          ),
          suffixIcon: obscure
              ? IconButton(
            icon: Icon(showPassword ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(() {
                showPassword = !showPassword;
              });
            },
          )
              : null,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
