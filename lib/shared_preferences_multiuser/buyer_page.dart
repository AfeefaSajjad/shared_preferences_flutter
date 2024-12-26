import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_page.dart';

class BuyerScreen extends StatefulWidget {
  const BuyerScreen({super.key});

  @override
  State<BuyerScreen> createState() => _BuyerScreenState();
}

class _BuyerScreenState extends State<BuyerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Buyer Page",
          style: GoogleFonts.pacifico(
            textStyle:
                const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 600, left: 270),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginPage2()));
              },
              backgroundColor: Colors.grey,
              child: const Icon(
                Icons.logout,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
