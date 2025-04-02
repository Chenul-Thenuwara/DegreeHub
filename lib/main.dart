import 'package:degreehub/Pages/add_degree_page.dart';
import 'package:degreehub/Pages/degree_list_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'pages/home_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(DegreeHubApp());
}

class DegreeHubApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DegreeHub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      initialRoute: '/home', // Start directly from Home
      routes: {
        '/home': (context) => HomePage(),
        '/degrees': (context) => DegreeListPage(),
        '/add_degree': (context) => AddDegreePage(),
      },
    );
  }
}
