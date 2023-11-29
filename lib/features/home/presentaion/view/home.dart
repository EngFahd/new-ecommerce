import 'package:flutter/material.dart';
import 'package:new_ecomerce/features/home/presentaion/view/widget/home-body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: HomeBody());
  }
}