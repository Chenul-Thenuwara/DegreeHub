import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: GNav(
        gap: 8,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
            iconColor: Color(0xFF5B8C6E),
            backgroundColor: Color(0xFFCCD5AE),
          ),
          GButton(
            icon: Icons.search,
            text: 'Search',
            iconColor: Color(0xFF5B8C6E),
            backgroundColor: Color(0xFFCCD5AE),
          ),
          GButton(
            icon: Icons.settings,
            text: 'Settings',
            iconColor: Color(0xFF5B8C6E),
            backgroundColor: Color(0xFFCCD5AE),
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
            iconColor: Color(0xFF5B8C6E),
            backgroundColor: Color(0xFFCCD5AE),
          ),
        ]
        ),

      /*body: Center(
        child: Column(
          children: [
            Text('Sign in as : ' + user.email!),
            MaterialButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              color : Color(0xFFCCD5AE), 
              child: Text('Sign Out'),
              
            ),
          ],
        ),
      ),*/
    );
  }
}
