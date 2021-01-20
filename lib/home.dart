import 'dart:ffi';
import 'package:authentication4_flutter_app/Animation/FadeAnimation.dart';
import 'package:authentication4_flutter_app/SignIn_light.dart';
import 'package:authentication4_flutter_app/SignUp_light.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        body:Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                ClipPath(
                  clipper: WaveClipperTwo(),
                  child: Container(
                    width: double.infinity,
                    height: 350.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage("assets/image/img2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 40),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: FadeAnimation(1.6,Text(
                    'Creative',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),
                  )),
                ),

                SizedBox(height: 15),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: FadeAnimation(1.6,Text(
                    'We made something different',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18
                    ),
                  )),
                ),

                SizedBox(height: 35),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: FadeAnimation(1.6, Container(
                      height: 50,
                      width: 320,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black
                      ),
                      child: GestureDetector(

                        onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => SignUpLight()),);},

                        child: Center(
                          child: Text("Sign Up", style: TextStyle(fontSize: 18,color: Colors.white, fontWeight: FontWeight.bold),),
                        ),
                      )
                  )),
                ),




                SizedBox(height: 15,),




                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: FadeAnimation(1.6, Container(
                      height: 50,
                      width: 320,

                      // margin: EdgeInsets.symmetric(horizontal: 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),

                        color: Color(0xff6c1921)

                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => SignInLight()),);
                        },
                        child: Center(
                          child: Text("Sign In", style: TextStyle(fontSize: 18,color:Colors.white, fontWeight: FontWeight.bold),),
                        ),
                      )
                  )),
                ),






              ],
            )

        ),
      ),
    );
  }
}
