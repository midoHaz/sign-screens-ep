import 'package:ep_sign_screens/shared/components.dart';
import 'package:flutter/material.dart';

class TokotoS3 extends StatelessWidget {
  const TokotoS3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                const SizedBox(height: 100.0,),
                const Text("TOKOTO",style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange
                ),),
                const SizedBox(
                  height: 5.0,
                ),
                const Text("Tokoto is the easy way to shop stay at home with us ",style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),textAlign:TextAlign.center,),
                const SizedBox(
                  height: 80.0,
                ),
                Image.asset('assets/images/Tokoto3.jpg'),
                const SizedBox(
                  height: 80.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 5.0,
                      height: 3.0,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Container(
                      width: 5.0,
                      height: 3.0,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Container(
                      width: 10.0,
                      height: 3.0,
                      color: Colors.deepOrange,
                    )
                  ],
                ),
                const SizedBox(height: 100.0,),
                defaultButton(
                  text: 'Continue',
                ),
                const SizedBox(height: 60.0,),
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
