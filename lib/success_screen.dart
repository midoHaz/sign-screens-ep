import 'package:flutter/material.dart';

import 'shared/componants.dart';


class SuccessScreen extends  StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Padding(
          padding: EdgeInsets.only(left: 25),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Center(
          child: Text(
            'Login Success',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 25,
                fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            children:
            [
           const SizedBox(
               height: 100,
             ),
           const CircleAvatar(
                radius: 70,
                backgroundColor: Colors.deepOrange,
                child: Icon(
                  Icons.done,
                  color: Colors.white,
                  size: 70,
                ),
              ),
           const SizedBox(
               height: 100,
             ),
           const Text(
               'Login Success',
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 40,
                 fontWeight: FontWeight.bold,
               ),
             ),
           const SizedBox(
               height: 80,
             ),
             defaultButton(
               width: 220,
               backGround: Colors.deepOrange,
               function: (){},
               text: 'Back to Home',
               colorText: Colors.white,
               radius: 15,
               textSize: 22,
             ),
            ],
          ),
        ),
      ),
    );
  }
}
