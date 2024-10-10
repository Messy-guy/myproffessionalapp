import 'package:flutter/material.dart';

class Passwordresetscreen extends StatelessWidget {
  Passwordresetscreen({super.key});

   Color backgroundColor = const Color(0xFFD9E7F3);

  Color textcolor = const Color(0xFF1F1B6B);

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
      appBar: AppBar(),
      backgroundColor: backgroundColor ,
      body: Column(
        children: [
          Center(child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Reset Your Password!',style: TextStyle(fontSize: 30,
            fontWeight: FontWeight.bold),),
            
          )),
          Text('We will send you a link to reset your password in your gmail'),
          SizedBox(height: 20,),
          Text('Enter Your Email:',style: TextStyle(fontSize: 15),),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
               decoration: InputDecoration(
                            hintText: 'enter your email',
                            prefixIcon: Icon(Icons.person, size: 30, color: textcolor),
                            enabledBorder: customBorder(textcolor),
                            focusedBorder: customBorder(Colors.deepPurple),
                          ),
            ),
          ),
          ElevatedButton(onPressed:() {
            
          }, child: Text('Submit'))
        ],
      ),
    );
  }
}