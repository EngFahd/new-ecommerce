import 'package:go_router/go_router.dart';
import 'package:new_ecomerce/Cart/presntaion/view/Cart.dart';
import 'package:new_ecomerce/features/Auth/presentaion/register-viwe.dart';
import 'package:new_ecomerce/features/Auth/presentaion/signIn-viwe.dart';

import 'package:new_ecomerce/features/home/presentaion/view/home.dart';
import 'package:new_ecomerce/features/profile/presentaion/view/profile.dart';

// GoRouter configuration
abstract class AppRouter {
  static String SignIn = '/';
  static String Register = '/register';
  static String HomeViwe = '/Home';
  static String registerViwe = '/register';
  static String ProfileViwe = '/profile';
  static String CartViwe = '/cart';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: SignIn,
        builder: (context, state) => const SignInViwe(),
      ),
      GoRoute(
        path: Register,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: HomeViwe,
        builder: (context, state) => const Home(),
      ),
      GoRoute(
        path: registerViwe,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: ProfileViwe,
        builder: (context, state) => const Profile(),
      ),
      GoRoute(
        path: CartViwe,
        builder: (context, state) => const Cart(),
      ),
    ],
  );
}
