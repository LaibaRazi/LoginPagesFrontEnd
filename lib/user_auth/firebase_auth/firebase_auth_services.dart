import 'package:firebase_auth/firebase_auth.dart';
class FirebaseAuthServices
{
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signupwithemailandpassword(String email,String password)async
  {
    try{
      UserCredential credential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    }
    catch(e)
    {
      print("some error occured");
    }
    return null;
  }

  Future<User?> signInwithemailandpassword(String email,String password)async
  {
    try{
      UserCredential credential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    }
    catch(e)
    {
      print("some error occured");
    }
    return null;
  }
}