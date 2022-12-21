// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class TwitterButton extends StatelessWidget {
  final isIcon;
  final buttonIcon;
  final buttonText;
  const TwitterButton(
      {super.key,
      required this.isIcon,
      this.buttonIcon,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 20,
      width: size.width / 1.2,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60 / 2), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isIcon == true
              ? Image.asset(buttonIcon, scale: 21)
              : const SizedBox(),
          SizedBox(
            width: size.width / 70,
          ),
          Text(
            buttonText,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
