import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_ecomerce/core/utils/Style.dart';
import 'package:new_ecomerce/core/utils/router.dart';
import 'package:new_ecomerce/features/Auth/presentaion/widgets/button_connction_media.dart';

class SecondSectionSign extends StatelessWidget {
  const SecondSectionSign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 28),
        const Text("-OR-", style: Style.textStyle18),
        const SizedBox(height: 10),
        ButtonConnctionMedia(
            onTap: () async {
              // await signInWithGoogle();
            //  GoRouter.of(context).push(AppRouter.CartViwe);
            },
            imag: 'assets/facebook.png',
            text: 'Sign In with Facebook'),
        const SizedBox(height: 15),
        const ButtonConnctionMedia(
            imag: "assets/google.png", text: 'Sign In with Googel'),
      ],
    );
  }

  // Future<UserCredential> signInWithGoogle() async {
  //   // Trigger the authentication flow
  //   final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  //   // Obtain the auth details from the request
  //   final GoogleSignInAuthentication? googleAuth =
  //       await googleUser?.authentication;

  //   // Create a new credential
  //   final credential = GoogleAuthProvider.credential(
  //     accessToken: googleAuth?.accessToken,
  //     idToken: googleAuth?.idToken,
  //   );

  //   // Once signed in, return the UserCredential
  //   return await FirebaseAuth.instance.signInWithCredential(credential);
  // }

}
