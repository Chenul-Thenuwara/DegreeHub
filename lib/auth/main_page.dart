import 'package:degreehub/auth/auth_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:degreehub/Pages/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?> (
        stream: FirebaseAuth.instance.authStateChanges(),
        builder : (contex,snapshot){
          if (snapshot.hasData){

            return HomePage();
          } else {

            return AuthPage();
          }
        }, 
      ),
    );
  }
}