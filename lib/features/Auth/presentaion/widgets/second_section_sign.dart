import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:new_ecomerce/core/utils/Style.dart';
import 'package:new_ecomerce/core/utils/router.dart';
import 'package:new_ecomerce/features/Auth/manage/AuthCubit/auth_cubit.dart';
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
              await BlocProvider.of<AuthCubit>(context).signInWithFacebook();
               GoRouter.of(context).push(AppRouter.CartViwe);
            },
            imag: 'assets/facebook.png',
            text: 'Sign In with Facebook'),
        const SizedBox(height: 15),
        ButtonConnctionMedia(
            onTap: () async {
              await BlocProvider.of<AuthCubit>(context).signInWithGoogle();
              GoRouter.of(context).push(AppRouter.CartViwe);
            },
            imag: "assets/google.png",
            text: 'Sign In with Googel'),
      ],
    );
  }
}
