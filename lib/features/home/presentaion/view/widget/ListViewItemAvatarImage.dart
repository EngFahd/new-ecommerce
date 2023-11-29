import 'package:flutter/material.dart';
import 'package:new_ecomerce/core/utils/Style.dart';

class ListViewItemAvatarImage extends StatelessWidget {
  const ListViewItemAvatarImage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey.shade100,
          ),
          height: 60,
          width: 60,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/Icon_Mens Shoe.png'),
          ),
        ),const SizedBox(height: 20,),
        const Text('Men')
      ],
    );
    
  }
}
