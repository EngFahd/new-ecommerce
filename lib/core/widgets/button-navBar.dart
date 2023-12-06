import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:new_ecomerce/core/utils/router.dart';
import 'package:new_ecomerce/features/profile/presentaion/view/profile.dart';

class ButtonNavBar extends StatelessWidget {
  const ButtonNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GNav(
        onTabChange: (index) {
          print(index);
          switch (index) {
            case 0:
              GoRouter.of(context).push(AppRouter.HomeViwe);
              break;
            case 1:
              GoRouter.of(context).push(AppRouter.CartViwe);
              break;
            case 2:
              GoRouter.of(context).push(AppRouter.ProfileViwe);
              break;
          }
        },
        gap: 8,
        tabs: const [
          GButton(
            icon: FontAwesomeIcons.houseChimneyWindow,
            // text: "home",
          ),
          GButton(
            icon: FontAwesomeIcons.cartArrowDown,
            // text: "Cart",
          ),
          GButton(
            icon: FontAwesomeIcons.user,
            // text: "Profile",
          ),
        ]);
  }
}
