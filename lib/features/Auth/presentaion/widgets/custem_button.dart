import 'package:flutter/material.dart';
import 'package:new_ecomerce/core/utils/Style.dart';

class CustemTextButton extends StatelessWidget {
  const CustemTextButton({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: MediaQuery.of(context).size.width * 5,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xff00C569),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12))),
          child: Text(
            "SIGN IN",
            style: Style.textStyle18.copyWith(color: Colors.white),
          )),
    );
  }
}
