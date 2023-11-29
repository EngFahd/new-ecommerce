import 'package:flutter/material.dart';

class CutemTextFormFiled extends StatelessWidget {
  const CutemTextFormFiled({
    super.key,
    this.onChanged,
    this.obscureText,
  });
  final Function(String?)? onChanged;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      validator: (data) {
        if (data!.isEmpty) {
          return "This input must be fill";
        }
        return null;
      },
      onChanged: onChanged,
      cursorColor: Colors.grey,
      decoration: const InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xff00C569)),
        ),
      ),
    );
  }
}
