import 'package:flutter/material.dart';
import 'package:new_ecomerce/core/utils/Style.dart';

class HomeBestSellingListView extends StatelessWidget {
  const HomeBestSellingListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/chaire.png',
            height: 240,
            width: 150,
          ),
          Text(
            "BeoPlay Speaker",
            style: Style.textStyle16.copyWith(fontWeight: FontWeight.w500),
          ),
          const Text(
            'Bang and Olufsen',
            style: Style.textStyle12,
          ),
          Text(
            r"$755",
            style: Style.textStyle16.copyWith(
                fontWeight: FontWeight.w500, color: const Color(0xff00C569)),
          )
        ],
      ),
    );
  }
}
