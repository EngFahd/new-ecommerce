import 'package:flutter/material.dart';
import 'package:new_ecomerce/features/home/presentaion/view/widget/ListViewItemAvatarImage.dart';

class HomeListViewAvatar extends StatelessWidget {
  const HomeListViewAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const ListViewItemAvatarImage();
        },
        separatorBuilder: (context, int index) => const SizedBox(
          width: 20,
        ),
      ),
    );
  }
}
