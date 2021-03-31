import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app_tutorial/modul/appuser.dart';

class AuthMethod
{
  final FirebaseAuth _auth= FirebaseAuth.instance;
  appUse  _userFromFirebaseUser(User user)
  {
    return user!=null ?   appUse(userId: user.uid) : null;
  }
  Future signInWithEmailandPassword(String email, String password) async {

    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User firebaseUser = result.user;

      return _userFromFirebaseUser(firebaseUser);
    } catch (e)
    {
      print(e.toString());
    }
  }
   Future signUpwithEmailAndPassword(String email, String password)async {
     try {
       UserCredential resutl = await _auth.createUserWithEmailAndPassword
         (email: email, password: password);
       User firebaseUser = resutl.user;
       return _userFromFirebaseUser(firebaseUser);
     } catch (e) {
       print(e.toString());
     }

   }
     Future resetPass(String email) async {
       try {
         return await _auth.sendPasswordResetEmail(email: email);
       } catch (e) {
         print(e.toString());
       }
     }
     Future signOut() async {
       try {
         return await _auth.signOut();
       } catch (e) {}
     }
   }