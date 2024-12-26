import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_page.dart';

class LoginPage3 extends StatefulWidget {
  const LoginPage3({super.key});

  @override
  State<LoginPage3> createState() => _LoginPage3State();
}

class _LoginPage3State extends State<LoginPage3> {
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 20, top: 140),
          child: Container(
            height: 550,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage("assets/images/5.png"),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                      obscureText: false,
                      controller: nameController,
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
                            color: Colors.black54,
                          ),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                      obscureText: false,
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: "Date of Birth",
                        labelStyle: GoogleFonts.pacifico(
                          textStyle: const TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                        hintText: "Month,Year",
                        hintStyle: GoogleFonts.pacifico(),
                        fillColor: Colors.black12,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black54,
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                      obscureText: false,
                      controller: nameController,
                      decoration: InputDecoration(
                        labelText: "Country",
                        labelStyle: GoogleFonts.pacifico(
                          textStyle: const TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                        hintText: "Please enter your country",
                        hintStyle: GoogleFonts.pacifico(),
                        fillColor: Colors.black12,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black54,
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () async {
                    SharedPreferences sp =
                        await SharedPreferences.getInstance();

                    sp.setString("email", emailController.text.toString());
                    sp.setString("name", nameController.text.toString());
                    sp.setString("phone", phoneController.text.toString());
                    sp.setBool("isLogin", true);

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 30.0),
                    height: 55,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey.shade100,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
