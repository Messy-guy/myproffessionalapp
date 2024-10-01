// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myprofessionals/firebase_options.dart';
import 'package:myprofessionals/pages/signin.dart';
import 'package:myprofessionals/pages/signup.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes:{
        '/signinpage' :(context) => Signin(),
         '/signuppage' :(context) => LoginPage(),
      },
    );
  }
}