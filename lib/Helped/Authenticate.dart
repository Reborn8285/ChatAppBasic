import 'package:flutter/material.dart';
import 'package:flutter_app_tutorial/Views/Signup.dart';
import 'package:flutter_app_tutorial/Views/signin.dart';
 class Authenticate extends StatefulWidget {

   @override
   _AuthenticateState createState() => _AuthenticateState();
 }
      bool showSignIn= true;

 class _AuthenticateState extends State<Authenticate> {
   void toggleView() {
     setState(() {
       showSignIn =!showSignIn;
     });
   }
   @override
   Widget build(BuildContext context) {
      if(showSignIn){
       return SignIn(toggleView);
     }else{
      return SignUp(toggleView);
     }
   }
 }
 