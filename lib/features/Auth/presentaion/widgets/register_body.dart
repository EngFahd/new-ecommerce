import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:new_ecomerce/core/utils/Style.dart';
import 'package:new_ecomerce/core/utils/router.dart';
import 'package:new_ecomerce/features/Auth/manage/AuthCubit/auth_cubit.dart';
import 'package:new_ecomerce/features/Auth/presentaion/widgets/custem_button.dart';
import 'package:new_ecomerce/features/Auth/presentaion/widgets/cutem_text_filed.dart';

class RegisterBody extends StatelessWidget {
  RegisterBody({super.key});

  late String? name;
  late String? email;
  late String? password;
  GlobalKey<FormState> globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Sign Up", style: Style.textStyle30),
                    const SizedBox(height: 47),
                    const Text("Name", style: Style.textStyle14Hint),
                    CutemTextFormFiled(
                      obscureText: false,
                      onChanged: (valu) {
                        name = valu;
                      },
                    ),
                    const SizedBox(height: 38),
                    const Text("Email", style: Style.textStyle14Hint),
                    CutemTextFormFiled(
                      obscureText: false,
                      onChanged: (valu) {
                        email = valu;
                      },
                    ),
                    const SizedBox(height: 38),
                    const Text("Password", style: Style.textStyle14Hint),
                    CutemTextFormFiled(
                      obscureText: false,
                      onChanged: (valu) {
                        password = valu;
                      },
                    ),
                    const SizedBox(height: 60),
                    CustemTextButton(
                      onPressed: () async {
                        
                          await BlocProvider.of<AuthCubit>(context)
                              .register(email: email!, passwaord: password!);
                          GoRouter.of(context).push(AppRouter.CartViwe);
                        
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
