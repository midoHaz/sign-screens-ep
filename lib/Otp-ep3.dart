
import 'package:ep_sign_screens/shared/components.dart';
import 'package:flutter/material.dart';

class Otpverification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black87,
        leading: const Icon(Icons.arrow_back_ios,size: 20,),
        title: const Center(child: Text("OTP Verivication",style: TextStyle(fontSize: 23.0,fontWeight:FontWeight.bold,color: Colors.grey,),)),
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
                const Text("OTP Verification",style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),),
                const SizedBox(
                  height: 5.0,
                ),
                const Text("We sent your code to +1 898 860*** , this code will be expired in 00:30",style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),textAlign:TextAlign.center,),
                const SizedBox(
                  height: 90.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: TextFormField(
                      keyboardType: TextInputType.phone,
                      maxLength: 1,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color:Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(
                            (7.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.deepOrange,
                          ),
                          borderRadius: BorderRadius.circular(
                            (7.0),
                          ),
                        ),
                      ),
                    )),
                    const SizedBox(width: 8.0,),
                    Expanded(child: TextFormField(
                      maxLength: 1,
                      keyboardType: TextInputType.phone,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color:Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(
                            (7.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.deepOrange,
                          ),
                          borderRadius: BorderRadius.circular(
                            (7.0),
                          ),
                        ),
                      ),
                    )),
                    const SizedBox(width: 8.0,),
                    Expanded(child: TextFormField(
                      maxLength: 1,
                      keyboardType: TextInputType.phone,
                      obscureText: true,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color:Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(
                            (7.0),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.deepOrange,
                          ),
                          borderRadius: BorderRadius.circular(
                            (7.0),
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
                const SizedBox(
                  height: 120.0,
                ),
                defaultButton(
                  text: 'Continue',
                ),
                const SizedBox(
                  height: 120.0,
                ),
                TextButton(onPressed: (){},
                    child:const Text("Resend OTP Code",style: TextStyle(decoration: TextDecoration.underline),)),
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
