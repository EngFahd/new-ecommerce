import 'package:flutter/material.dart';
import 'package:new_ecomerce/features/Auth/presentaion/widgets/register_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: RegisterBody()),
    );
  }
}