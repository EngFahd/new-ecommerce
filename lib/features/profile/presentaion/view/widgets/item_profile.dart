import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:new_ecomerce/core/utils/Style.dart';

class ItemProfile extends StatelessWidget {
  const ItemProfile({
    super.key,
    required this.text,
    required this.iconF,
    this.onPressed,
  });
  final String text;
  final IconData iconF;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        child: Container(
          // color: Colors.white,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
            boxShadow: [
              BoxShadow(
                  blurRadius: 40,
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 0,
                  offset: const Offset(2, 0))
            ],
          ),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    iconF,
                    size: 25,
                    color: const Color(0xff00C569).withOpacity(0.5),
                  )),
              Text(
                text,
                style: Style.textStyle18,
              ),
              const Spacer(),
              Icon(
                FontAwesomeIcons.arrowRight,
                color: Colors.black.withOpacity(0.6),
              )
            ],
          ),
        ),
      ),
    );
  }
}
