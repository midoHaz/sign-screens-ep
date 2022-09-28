
import 'package:flutter/material.dart';

import 'shared/componants.dart';

// ignore: must_be_immutable
class ForgetScreen extends  StatelessWidget {
   ForgetScreen({Key? key}) : super(key: key);

  var emailController =TextEditingController();
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
            'Forget Password',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 25,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:
              [
                const Text(
                  'Forget Password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Please enter your email and we will send you a link to return to your password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                defaultTextForm(
                  controller: emailController,
                  type: TextInputType.emailAddress,
                  validate: (){},
                  prefix: Icons.email,
                  colorIcon: Colors.grey,
                  label: 'Email',
                  colorLabel: Colors.grey,
                  colorBorder: Colors.grey,
                  radius: 50,
                ),
                const SizedBox(
                  height: 100,
                ),
                defaultButton(
                    width: 350,
                    backGround: Colors.deepOrange,
                    function: (){},
                    text: 'Continue',
                  colorText: Colors.white,
                  radius: 50,
                ),
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Don\'t have an account ?',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
