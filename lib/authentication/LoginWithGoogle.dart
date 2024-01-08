import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign/tabbar.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  Future<void> _signInWithGoogle(BuildContext context) async {
    try {
      GoogleSignInAccount? googleSignInAccount = await GoogleSignIn().signIn();

      if (googleSignInAccount != null) {
        // Perform additional actions after successful sign-in, e.g., authenticate with Firebase
        GoogleSignInAuthentication googleSignInAuth =
            await googleSignInAccount.authentication;
        AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuth.accessToken,
          idToken: googleSignInAuth.idToken,
        );
        // UserCredential userCredential =
        //     await FirebaseAuth.instance.signInWithCredential(credential);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => TabScreen()),
        );
      }
    } catch (error) {
      print("Error during Google Sign In: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter, // Align to the top center
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.5,
              child: Image.asset(
                'assets/task photo.jpeg', // Replace with your actual image path
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Dive in without delay',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Lorem ipsum dolor sit amet consectetur     \n                 Neque et nulia et',
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(146, 7, 7, 7)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () => _signInWithGoogle(context),
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(
                      255, 250, 252, 253), // Background color of the button
                ),
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors
                        .white, // Background color of the container within the button
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/google.png', // Replace with Google logo or your own Google sign-in icon
                        height: 20.0, // Adjust the height of the image
                      ),
                      const SizedBox(height: 3.0),
                      Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
