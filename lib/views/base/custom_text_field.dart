// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class TwitterTextField extends StatelessWidget {
  final hintText;
  final onChanged;
  const TwitterTextField({super.key, required this.hintText, this.onChanged});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width / 1.1,
      height: 52,
      child: TextFormField(
          onChanged: onChanged,
          decoration: InputDecoration(
              labelText: hintText,
              labelStyle: const TextStyle(color: Colors.blueGrey),
              floatingLabelStyle: const TextStyle(color: Colors.blue),
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 1.1, color: Colors.blueGrey),
                  borderRadius: BorderRadius.circular(5)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1.1, color: Colors.blue),
                  borderRadius: BorderRadius.circular(5)),
              hintStyle: const TextStyle(color: Colors.blueGrey))),
    );
  }
}
