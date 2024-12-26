import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userEmail;
  var userName;

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  void getUserData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      userEmail = sp.getString("email");
      userName = sp.getString("name");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 300,
          ),
          Center(
            child: Text(
              "This is our HomePage",
              style: GoogleFonts.pacifico(
                textStyle: const TextStyle(
                  fontSize: 26,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 270,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200),
            child: InkWell(
              onTap: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.clear();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 30.0),
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 4.0,
                      blurRadius: 4.0,
                      offset: const Offset(2.0, 2.0),
                    )
                  ],
                ),
                child: Center(
                  child: Text(
                    "Log Out",
                    style: GoogleFonts.pacifico(
                      textStyle: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
