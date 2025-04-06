import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.grey[300],
     body:SafeArea(
        child: Center(
          child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Icon(Icons.lightbulb_outline_rounded, size: 100, ),
              Image.asset(
              'assets/uni.png',
                width: 200,
                height: 200,
               ),
                     
          //hello again!

          Text(
            'Hello Again!',
            style: GoogleFonts.bebasNeue(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
            ),
          ),

          Text(
            'Welcome back,',
            style: TextStyle(
              fontSize: 20
            ),
          ),

          SizedBox(
            height: 30,
          ),

          //email textfield

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white), 
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                    ),
                
                ),
              ),
            ),
          ),

          //password textfield

         SizedBox(
          height: 10,
         ),
 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.white), 
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    ),
                
                ),
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          //sign in button

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xFFCCD5AE),
              borderRadius: BorderRadius.circular(12),  
              ),
            child: Center(
              child: Text(
                'Sign in',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  )
                )
              ),
            ),
        ),

        SizedBox(
            height: 25,
          ),

          //not a member? register now

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Not a Member?',style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              Text(' Register now', style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold
              ),),
            ],
          ),


          ]         ),
        ),
      ),
    );
  }
}