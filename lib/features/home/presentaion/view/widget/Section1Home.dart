import 'package:flutter/material.dart';
import 'package:new_ecomerce/core/utils/Style.dart';
import 'package:new_ecomerce/features/home/presentaion/view/widget/HomeTextFeild.dart';

class Section1Home extends StatelessWidget {
  const Section1Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: HomeTextFeild(),
          ),
          const SizedBox(height: 28),
          Text(
            "Categories",
            style:
                Style.textStyle18.copyWith(fontWeight: FontWeight.bold),
          ),
          // const SizedBox(height: 19)
        ],
      ),
    );
  }
}

