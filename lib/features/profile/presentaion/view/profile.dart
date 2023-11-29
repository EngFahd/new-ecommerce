import 'package:flutter/material.dart';
import 'package:new_ecomerce/core/widgets/button-navBar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const ButtonNavBar(),
      body: Container(
          child: const Center(
        child: Text("Centaer"),
      )),
    );
  }
}
