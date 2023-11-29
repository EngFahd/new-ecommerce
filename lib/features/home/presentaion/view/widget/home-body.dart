import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:new_ecomerce/core/utils/Style.dart';
import 'package:new_ecomerce/core/widgets/button-navBar.dart';
import 'package:new_ecomerce/features/home/presentaion/view/widget/HomeBestSellingListView.dart';
import 'package:new_ecomerce/features/home/presentaion/view/widget/HomeListViewAvatar.dart';
import 'package:new_ecomerce/features/home/presentaion/view/widget/HomeTextFeild.dart';
import 'package:new_ecomerce/features/home/presentaion/view/widget/Section1Home.dart';
import 'package:new_ecomerce/features/home/presentaion/view/widget/Section2Home.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Section1Home(),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: HomeListViewAvatar(),
            ),
            Section2Home()
          ],
        ),
      ),
      bottomNavigationBar: ButtonNavBar(),
    );
  }
}
