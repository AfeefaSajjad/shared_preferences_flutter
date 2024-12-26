import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'admin_page.dart';
import 'buyer_page.dart';
import 'seller_page.dart';




class LoginPage2 extends StatefulWidget {
  const LoginPage2({super.key});

  @override
  State<LoginPage2> createState() => LoginPage();
}

class LoginPage extends State<LoginPage2> {
  final List<String> items = ['seller', 'buyer', 'admin'];
  String selectedOption = 'seller';

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController chooseController = TextEditingController();
  final TextEditingController nameTypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pinkAccent,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/5.png"),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Text(
                      "Sign In",
                      style: GoogleFonts.pacifico(
                        textStyle: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: TextFormField(
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
                        ),
                      ),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: DropdownButtonFormField(
                        value: selectedOption,
                        items: items.map((String item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(
                              item,
                              style: GoogleFonts.pacifico(),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          if (value != null) {
                            setState(() {
                              selectedOption = value;
                            });
                            print(selectedOption);
                          }
                        },
                        decoration: InputDecoration(
                          labelText: 'Select an option',
                          labelStyle: GoogleFonts.pacifico(
                            textStyle: const TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.redAccent,
                            ),
                          ),
                          fillColor: Colors.black12,
                          filled: true,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        onTap: () async {
                          SharedPreferences sp =
                          await SharedPreferences.getInstance();
                          sp.setString(
                              "email", emailController.text.toString());
                          sp.setString("userType", selectedOption.toString());
                          sp.setBool("isLogin", true);

                          var userType = sp.getString("userType");

                          if (userType == "admin") {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AdminScreen()));
                          } else if (userType == "seller") {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const SellerScreen()));
                          } else {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BuyerScreen()));
                          }
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20.0),
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black26,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2.0,
                                blurRadius: 2.0,
                                offset: const Offset(2.0, 2.0),
                              )
                            ],
                          ),
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
