import 'package:flutter/material.dart';

import 'package:new_ecomerce/features/Auth/presentaion/widgets/first_section_sign.dart';
import 'package:new_ecomerce/features/Auth/presentaion/widgets/second_section_sign.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [FirstSectionSign(), const SecondSectionSign()],
      ),
    );
  }
}
