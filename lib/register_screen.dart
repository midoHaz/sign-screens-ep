import 'package:flutter/material.dart';

import 'shared/componants.dart';


// ignore: must_be_immutable
class RegisterScreen extends  StatelessWidget {
   RegisterScreen({Key? key}) : super(key: key);

   var emailController=TextEditingController();
   var passwordController=TextEditingController();
   var confirmController=TextEditingController();
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
            'Sign Up',
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
                  'Register Account',
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
                  'Complete tour details or continue with social media',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 30,
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
                  hint: 'Enter your email'
                ),
                const SizedBox(
                  height:20,
                ),
                defaultTextForm(
                  controller: passwordController,
                  type: TextInputType.visiblePassword,
                  validate: (){},
                  prefix: Icons.lock,
                  colorIcon: Colors.grey,
                  label: 'Password',
                  colorLabel: Colors.grey,
                  colorBorder: Colors.grey,
                  radius: 50,
                    hint: 'Enter your password'
                ),
                const SizedBox(
                  height:20,
                ),
                defaultTextForm(
                  controller: confirmController,
                  type: TextInputType.visiblePassword,
                  validate: (){},
                  prefix: Icons.lock,
                  colorIcon: Colors.grey,
                  label: 'Confirm Password',
                  colorLabel: Colors.grey,
                  colorBorder: Colors.grey,
                  radius: 50,
                    hint: 'Re_enter your password'
                ),
                const SizedBox(
                  height:20,
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
                  height:50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    CircleAvatar(
                      backgroundColor: Colors.black12,
                      radius: 22,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/google.jpeg'),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black12,
                      radius: 22,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/facebook.jpeg'),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black12,
                      radius: 22,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/twitter.jpeg'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'By continuing your confirm that you agree with our team and condition',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
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
