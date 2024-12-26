import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences_practise/shared_preferences_multiloginpage/login_page2.dart';


class LoginPage1 extends StatefulWidget {
  const LoginPage1({super.key});

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  var nameController = TextEditingController();
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
                        labelText: " First Name",
                        labelStyle: GoogleFonts.pacifico(
                          textStyle: const TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                        hintText: "Please enter your first  name",
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
                      // controller: nameController,
                      decoration: InputDecoration(
                        labelText: " Last Name",
                        labelStyle: GoogleFonts.pacifico(
                          textStyle: const TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                        hintText: "Please enter your last  name",
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
                      controller: phoneController,
                      decoration: InputDecoration(
                        labelText: " Phone  Number",
                        labelStyle: GoogleFonts.pacifico(
                          textStyle: const TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                        hintText: ""
                            " +92----------",
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
                              builder: (context) => const LoginPage2()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 129, left: 176),
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
