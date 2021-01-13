import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:login_flutter_ui/sign_in.dart';
import 'package:login_flutter_ui/sign_up.dart';

import 'Animation/FadeAnimation.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        body:Container(

          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF212121),


          ),



          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [



              Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       ClipPath(
                        clipper: WaveClipperTwo(),

                        child: Container(
                          width: 400.0,
                          height: 120.0,
                          decoration: BoxDecoration(

                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xFFf99321),
                                Color(0xFFfc5a3b),
                                ],
                            ),
                          ),
                        ),
                      ),


                    ],
                  ),



                  SizedBox(height: 50),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: FadeAnimation(1.6,Text(
                      'Join a community \nof creators',
                      style: TextStyle(
                          color: Color(0xFFcccccf),
                          fontWeight: FontWeight.bold,
                          fontSize: 40

                      ),
                    )),
                  ),

                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: FadeAnimation(1.6,Text(
                      'A simple , fun , and creative way to \nshare photos , videos , messages\nwith friends and family ',
                      style: TextStyle(
                          color: Color(0xFF777779),
                          fontWeight: FontWeight.bold,
                          fontSize: 18

                      ),
                    )),
                  ),



                  SizedBox(height: 120),


                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: FadeAnimation(1.6, Container(
                        height: 50,
                        width: 320,

                        // margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF464646)
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp()),);
                          },
                          child: Center(
                            child: Text("Sign Up", style: TextStyle(fontSize: 18,color: Color(0xFFcccccf), fontWeight: FontWeight.bold),),
                          ),
                        )
                    )),
                  ),




                  SizedBox(height: 30,),




                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: FadeAnimation(1.6, Container(
                        height: 50,
                        width: 320,

                        // margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFFffb421),
                                Color(0xFFff7521)
                              ]
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => SignIn()),);
                          },
                          child: Center(
                            child: Text("Sign In", style: TextStyle(fontSize: 18,color:Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        )
                    )),
                  ),


                  SizedBox(height: 30,),



                ],
              ),
            ],

          )

        ),
      ),
    );
  }
}

