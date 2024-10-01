import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color backgroundColor = const Color(0xFFD9E7F3);
  Color textcolor = const Color(0xFF1F1B6B);

  bool ispasswordvisible = false;
  Icon passwordicon = const Icon(Icons.visibility_off);

  OutlineInputBorder customBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(
        color: color,
        width: 2.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Center( // Center the entire content
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center vertically
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 70, right: 70, top: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome!',
                      style: TextStyle(
                        color: textcolor,
                        fontSize: 35,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'To MyProfessionals',
                      style: TextStyle(
                        color: textcolor,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Image.asset(
                      'assets/signup.png',
                      height: 195,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20), // Space between welcome text and form
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20), // Added padding for form fields
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Create your account',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: textcolor,
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          prefixIcon: Icon(Icons.person, size: 30, color: textcolor),
                          enabledBorder: customBorder(textcolor),
                          focusedBorder: customBorder(Colors.deepPurple),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          prefixIcon: Icon(Icons.email, size: 30, color: textcolor),
                          enabledBorder: customBorder(textcolor),
                          focusedBorder: customBorder(Colors.deepPurple),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        obscureText: ispasswordvisible ? false : true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          prefixIcon: Icon(Icons.lock, size: 30, color: textcolor),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                ispasswordvisible = !ispasswordvisible;
                                passwordicon = ispasswordvisible
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off);
                              });
                            },
                            icon: passwordicon,
                          ),
                          enabledBorder: customBorder(textcolor),
                          focusedBorder: customBorder(Colors.deepPurple),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        "By pressing 'Sign Up' you agree our terms & condition",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    SizedBox(height: 12), // Space before the button
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Sign Up'),
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        minimumSize: Size(120, 50), // Width and height of the button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10), // Circular border radius
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text('~ Or continue with ~'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              // Google sign-in functionality here
                            },
                            icon: FaIcon(FontAwesomeIcons.google, size: 30, color: Colors.black),
                          ),
                          SizedBox(width: 20),
                          IconButton(
                            onPressed: () {
                              // GitHub sign-in functionality here
                            },
                            icon: FaIcon(FontAwesomeIcons.github, size: 30, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
               
              Center( // Center the already have account section
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?', style: TextStyle(fontSize: 11)),
                    SizedBox(width: 5,),
                    InkWell(
                      onTap: () {
                      Navigator.pushNamed(context, '/signinpage');
                      },
                      child: Text('Sign in', style: TextStyle(fontSize: 11))),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
