import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintTetxt;
  const CustomTextField(
      {Key? key, required this.controller, required this.hintTetxt, required String hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintTetxt,
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black38)),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black38),
        ),
      ),
      validator: (val) {},
    );
  }
}
