import 'package:flutter/material.dart';
import 'package:new_ecomerce/core/widgets/button-navBar.dart';
import 'package:new_ecomerce/features/profile/presentaion/view/widgets/profile_body.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: ButtonNavBar(),
      body: SafeArea(child: ProfileBody()),
    );
  }
}
