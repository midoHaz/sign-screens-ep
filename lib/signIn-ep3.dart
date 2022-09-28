import 'package:ep_sign_screens/shared/components.dart';
import 'package:flutter/material.dart';

class SignInS2 extends StatefulWidget {
  @override
  State<SignInS2> createState() => _SignInS2State();
}

class _SignInS2State extends State<SignInS2> {
  var emailController=TextEditingController();

  var passController=TextEditingController();

  bool ispassword=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black87,
        leading: const Icon(Icons.arrow_back_ios,size: 20,),
        title: const Center(child: Text("Sign In",style: TextStyle(fontSize: 23.0,fontWeight:FontWeight.bold,color: Colors.grey,),)),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body:
      SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                const SizedBox(height: 40.0,),
                const Text("Welcome Back",style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),),
                const SizedBox(
                  height: 5.0,
                ),
                const Text("Sign in with your email and password or continue with social media",style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),textAlign:TextAlign.center,),
                const SizedBox(
                  height: 60.0,
                ),
                defaultFormFieldo(control: emailController,
                  label: "Email",
                  prefix: Icons.email,
                  type: TextInputType.emailAddress,
                  hint: "Enter your email",),
                const SizedBox(
                  height: 18.0,
                ),
                defaultFormFieldo(control: passController,
                  label: "PassWord",
                  prefix: Icons.lock,
                  type: TextInputType.visiblePassword,
                  hint: "Enter your password",
                  suffix:ispassword?Icons.visibility_off:Icons.visibility,
                  isPassword:ispassword,
                  suffixpres: (){
                    setState(() {
                      ispassword=!ispassword;
                    });
                  },),
                const SizedBox(
                  height: 35.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Checkbox(value:false, onChanged: (value){
                        value=!value!;
                      },),const Text("Remember Me",style: TextStyle(color: Colors.grey),),
                    ],),
                    TextButton(onPressed: (){},
                        child:const Text("Forget Password",style: TextStyle(decoration: TextDecoration.underline),))
                  ],
                ),
                defaultButton(
                    text: 'Continue',
                ),
                const SizedBox(
                  height: 35.0,
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
                        child: Image.asset('assets/images/google.jpeg',),
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
                  height: 25.0,
                ),
               Row(
               mainAxisAlignment:MainAxisAlignment.center ,
                 children: [
                   const Text(
                     'Don`t have an account ?',
                     style: TextStyle(
                       fontSize: 16.0,
                       color: Colors.grey
                     ),
                   ),
                   TextButton(
                       onPressed: () {}, child: const Text('Sign Up',style: TextStyle(
                     color: Colors.deepOrange,fontSize: 20.0,
                   ),))
                 ],
               ),
                const SizedBox(
                  height: 50.0,
                ),
                Container(
                  width: 200.0,
                  height: 5.0,
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
