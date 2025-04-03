import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'pages/home_page.dart';
import 'pages/add_degree_page.dart';
import 'pages/degree_list_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const DegreeHubApp());
}

class DegreeHubApp extends StatelessWidget {
  const DegreeHubApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DegreeHub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      home: HomePage(), // Directly setting the home screen
      routes: {
        '/degrees': (context) => DegreeListPage(),
        '/add_degree': (context) => AddDegreePage(),
      },
    );
  }
}
