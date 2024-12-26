import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'admin_page.dart';
import 'buyer_page.dart';
import 'login_page.dart';
import 'seller_page.dart';


class LoadingScreen2 extends StatefulWidget {
  const LoadingScreen2({super.key});

  @override
  State<LoadingScreen2> createState() => _LoadingScreen2State();
}

class _LoadingScreen2State extends State<LoadingScreen2> {
  @override
  void initState() {
    super.initState();
    checkUser();
  }

  void checkUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool isLogin = sp.getBool("isLogin") ?? false;
    String? userType = sp.getString("userType");

    if (isLogin) {
      if (userType == "admin") {
        Timer(const Duration(seconds: 5), () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AdminScreen()));
        });
      } else if (userType == "seller") {
        Timer(const Duration(seconds: 5), () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SellerScreen()));
        });
      } else {
        Timer(const Duration(seconds: 5), () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const BuyerScreen()));
        });
      }
    } else {
      Timer(const Duration(seconds: 5), () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginPage2()));
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
              sigmaX: 2.0,
              sigmaY: 2.0,
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
