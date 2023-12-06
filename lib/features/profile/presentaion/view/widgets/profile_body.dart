import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:new_ecomerce/core/utils/Style.dart';
import 'package:new_ecomerce/core/utils/router.dart';
import 'package:new_ecomerce/features/profile/presentaion/view/widgets/item_profile.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.asset(
                    "assets/gojo.jpg",
                    height: 120,
                  ),
                ),
                const SizedBox(width: 30),
                Column(
                  children: [
                    Text(
                      FirebaseAuth.instance.currentUser!.email.toString(),
                      style: Style.textStyle14,
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(height: 112),
            Column(
              children: [
                ItemProfile(
                  onPressed: () {},
                  iconF: FontAwesomeIcons.penToSquare,
                  text: "Edite Profile",
                ),
                ItemProfile(
                  onPressed: () {},
                  iconF: FontAwesomeIcons.locationDot,
                  text: "Shipping Address",
                ),
                ItemProfile(
                  onPressed: () {},
                  iconF: FontAwesomeIcons.clock,
                  text: "Order History",
                ),
                ItemProfile(
                  onPressed: () {},
                  iconF: FontAwesomeIcons.addressCard,
                  text: "Cards",
                ),
                ItemProfile(
                  onPressed: () {},
                  iconF: FontAwesomeIcons.bell,
                  text: "Notifications",
                ),
                ItemProfile(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    GoRouter.of(context).push(AppRouter.SignIn);
                  },
                  iconF: FontAwesomeIcons.rightFromBracket,
                  text: "Log Out",
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
