import 'package:degreehub/Pages/login_page.dart';
import 'package:degreehub/Pages/register_page.dart';
import 'package:flutter/material.dart';


class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
//intially show the login page
bool showloginpage = true;

  // Toggle between login and register pages
  void toggleScreens() {
    setState(() {
      showloginpage = !showloginpage;
    });
  }


  @override
  Widget build(BuildContext context) {
    if (showloginpage) {
      return Loginpage(showRegisterPage: toggleScreens);
    } else {
     return RegisterPage(showLoginpage: toggleScreens);
    }
  }
}
