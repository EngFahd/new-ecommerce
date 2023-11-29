
import 'package:flutter/material.dart';
import 'package:new_ecomerce/core/utils/Style.dart';
import 'package:new_ecomerce/features/home/presentaion/view/widget/HomeBestSellingListView.dart';

class Section2Home extends StatelessWidget {
  const Section2Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 20), //======
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Best Selling",
                style: Style.textStyle18,
              ),
              Text(
                'See all',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              )
            ],
          ),
          SizedBox(
            height: 320,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const HomeBestSellingListView();
              },
            ),
          )
        ],
      ),
    );
  }
}
