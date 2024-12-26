import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_practise/shared_preferences_multiloginpage/login_page1.dart';

import 'home_page.dart';

class LoadingScreen3 extends StatefulWidget {
  const LoadingScreen3({super.key});

  @override
  State<LoadingScreen3> createState() => _LoadingScreen3State();
}

class _LoadingScreen3State extends State<LoadingScreen3> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool isLogin = sp.getBool("isLogin") ?? false;

    if (isLogin) {
      Timer(const Duration(seconds: 5), () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomePage()));
      });
    } else {
      Timer(const Duration(seconds: 5), () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginPage1()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/5.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5.0,
                  sigmaY: 5.0,
                ),
                child: Container(
                  color: Colors.black,
                ),
              ),
              Center(
                child: Text(
                  "Loading....",
                  style: GoogleFonts.pacifico(
                    textStyle:
                    const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
