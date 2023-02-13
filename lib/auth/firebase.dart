import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<User> signIn() async {
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  if (googleUser != null) {
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    final user = await FirebaseAuth.instance.signInWithCredential(credential);
    return user.user!;
  }
  return Future.error('Google Sign In failed');
}



