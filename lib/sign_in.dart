import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_flutter_ui/Animation/FadeAnimation.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,

      appBar: AppBar(
        backgroundColor: Color(0xFF212121),
        // title: Container(
        //   width: 40,
        //   height: 40,
        //   child: CircleAvatar(
        //     backgroundColor: Colors.transparent,
        //
        //   ),
        //
        // ),
        // centerTitle: true,
        leading: IconButton(
          icon: new Icon(Icons.arrow_back, color: Color(0xFF909093)),
          onPressed: () => Navigator.of(context).pop(),
        ),



      ),


      body:SafeArea(
        child: Container(

          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF212121),


          ),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[


              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children:<Widget>[

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 60),

                        FadeAnimation(1.6, Text('Sign In',style:
                        TextStyle(
                            color: Color(0xFF909093),
                            fontSize: 35,
                            fontWeight: FontWeight.bold
                        ),
                        ),),

                        SizedBox(height: 10,),

                        FadeAnimation(1.6, Text('Welcome Back',style:
                        TextStyle(
                            color: Color(0xFF909093),
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                        ),),

                        SizedBox(height: 70),

                        FadeAnimation(1.4, Container(
                          width: 320,


                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[


                              Container(
                                // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey))
                                ),
                                child: TextField(
                                  style: TextStyle(
                                    color: Colors.white,

                                  ),

                                  decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      hintText: "Mobile Number or Email",
                                      hintStyle: TextStyle(color: Colors.grey,fontSize: 14),
                                      border: new UnderlineInputBorder(
                                          borderSide: new BorderSide(
                                              color: Colors.blueAccent
                                          )
                                      )
                                  ),
                                ),
                              ),



                              SizedBox(height: 10,),


                              Container(
                                // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey))
                                ),

                                child: TextField(
                                  obscureText: true,
                                  style: TextStyle(
                                    color: Colors.white,

                                  ),
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey,fontSize: 14),
                                      border: new UnderlineInputBorder(
                                          borderSide: new BorderSide(color: Colors.blueAccent)
                                      )
                                  ),

                                ),
                              ),


                            ],
                          ),

                        )),


                        SizedBox(height: 60,),
                        FadeAnimation(1.6, Container(
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
                                // Navigator.push(context,MaterialPageRoute(builder: (context) => SignIn()),);
                              },
                              child: Center(
                                child: Text("Sign In", style: TextStyle(fontSize: 18,color: Colors.white, fontWeight: FontWeight.bold),),
                              ),
                            )
                        )),


                        SizedBox(height: 30),

                        // FadeAnimation(1.6, Text('Or sign up with another\naccount.',style:
                        // TextStyle(
                        //     color: Color(0xFF909093),
                        //     fontSize: 25,
                        //     fontWeight: FontWeight.bold
                        // ),
                        // ),),








                      ],
                    ),

                  ]
              ),



            ],
          ),
        ),
      ),
    );
  }
}
