import 'package:ep_sign_screens/register_screen.dart';
import 'package:ep_sign_screens/signIn-ep3.dart';
import 'package:ep_sign_screens/signUp-ep3.dart';
import 'package:ep_sign_screens/success_screen.dart';
import 'package:ep_sign_screens/tokyo1-ep1.dart';
import 'package:ep_sign_screens/tokyo2-ep1.dart';
import 'package:ep_sign_screens/tokyo3-ep1.dart';
import 'package:flutter/material.dart';

import 'Otp-ep3.dart';
import 'forget_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
   home: SuccessScreen(),
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
    );
  }
}
