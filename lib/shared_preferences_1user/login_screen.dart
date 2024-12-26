import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: 800,
          // color: const Color(0xffabdbe3),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/2.jpg"),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle: GoogleFonts.pacifico(
                        textStyle: const TextStyle(
                          color: Colors.black87,
                        ),
                      ),
                      hintText: "Please enter your name",
                      hintStyle: GoogleFonts.pacifico(),
                      fillColor: Colors.black12,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.redAccent,
                        ),
                      ),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: GoogleFonts.pacifico(
                        textStyle: const TextStyle(
                          color: Colors.black87,
                        ),
                      ),
                      hintText: "Enter your email",
                      hintStyle: GoogleFonts.pacifico(),
                      fillColor: Colors.black12,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.redAccent,
                        ),
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: GoogleFonts.pacifico(
                        textStyle: const TextStyle(
                          color: Colors.black87,
                        ),
                      ),
                      hintText: "Create Strong Password",
                      hintStyle: GoogleFonts.pacifico(),
                      fillColor: Colors.black12,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.redAccent,
                        ),
                      ),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () async {
                  SharedPreferences sp = await SharedPreferences.getInstance();

                  sp.setString("email", emailController.text.toString());
                  sp.setString("name", nameController.text.toString());
                  sp.setBool("isLogin", true);

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30.0),
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Log In",
                      style: GoogleFonts.pacifico(
                        textStyle: const TextStyle(
                          fontSize: 26,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              )
            ],
          ),
        ),
      ),
    );
  }
}
