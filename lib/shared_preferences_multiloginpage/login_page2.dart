import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences_practise/shared_preferences_multiloginpage/login_page1.dart';
import 'package:shared_preferences_practise/shared_preferences_multiloginpage/login_page3.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
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
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: " Email",
                        labelStyle: GoogleFonts.pacifico(
                          textStyle: const TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                        hintText: "abcde@gmail.com",
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
                      controller: passwordController,
                      decoration: InputDecoration(
                        labelText: " Password",
                        labelStyle: GoogleFonts.pacifico(
                          textStyle: const TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                        hintText: "Create strong Password",
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
                      //  controller: phoneController,
                      decoration: InputDecoration(
                        labelText: " Confirm Password",
                        labelStyle: GoogleFonts.pacifico(
                          textStyle: const TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                        hintText: "Verify your password",
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
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage3()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 120, left: 176),
                      child: Container(
                        height: 40,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade300,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 4.0,
                              blurRadius: 4.0,
                              offset: const Offset(2.0, 2.0),
                            )
                          ],
                        ),
                        child: const Center(
                          child: Text(
                            "Next",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 22,
                            ),
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
