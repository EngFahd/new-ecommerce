import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:new_ecomerce/core/widgets/button-navBar.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const ButtonNavBar(),
      body: Column(
        children: [
          Container(
              child: Center(
            child: Text(FirebaseAuth.instance.currentUser!.email.toString()),
          )),
          TextButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                
              },
              child: const Text("logout"))
        ],
      ),
    );
  }
}
