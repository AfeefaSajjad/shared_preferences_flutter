import 'package:flutter/material.dart';
import 'package:shared_preferences_practise/shared_preferences_multiloginpage/login_page1.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 600, left: 270),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginPage1()));
          },
          backgroundColor: Colors.grey,
          child: const Icon(
            Icons.logout,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
