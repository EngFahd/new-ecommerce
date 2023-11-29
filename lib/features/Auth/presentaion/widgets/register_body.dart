import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:new_ecomerce/core/utils/Style.dart';
import 'package:new_ecomerce/features/Auth/presentaion/widgets/custem_button.dart';
import 'package:new_ecomerce/features/Auth/presentaion/widgets/cutem_text_filed.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Container(
            margin: const EdgeInsets.only(top: 25),
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  blurRadius: 40,
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 0,
                  offset: const Offset(5, 0))
            ]),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sign Up", style: Style.textStyle30),
                    SizedBox(height: 47),
                    Text("Name", style: Style.textStyle14Hint),
                    CutemTextFormFiled(),
                    SizedBox(height: 38),
                    Text("Email", style: Style.textStyle14Hint),
                    CutemTextFormFiled(),
                    SizedBox(height: 38),
                    Text("Password", style: Style.textStyle14Hint),
                    CutemTextFormFiled(),
                    SizedBox(height: 60),
                    CustemTextButton()
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox()
      ],
    );
  }
}
