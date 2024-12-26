import 'package:flutter/material.dart';
import 'package:shared_preferences_practise/shared_preferences_multiloginpage/loading_page1.dart';

import 'shared_preferences_1user/loading_screen.dart';
import 'shared_preferences_multiuser/loading_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home:  LoadingScreen3());
  }
}
