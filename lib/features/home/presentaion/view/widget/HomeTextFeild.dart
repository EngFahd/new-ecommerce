import 'package:flutter/material.dart';

class HomeTextFeild extends StatelessWidget {
  const HomeTextFeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      // cursorColor: Colors.white,
      decoration: InputDecoration(
          filled: true,
          // fillColor: const Color(0xffF7F7F7),
          fillColor: Colors.grey.shade200,
          prefixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 20,
              )),
          prefixIconColor: Colors.black,
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  // color: Colors.red
                  color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  // color: Colors.red
                  color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
    );
  }
}
