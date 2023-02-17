// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class FilledButton extends StatelessWidget {
  final isActive;
  final isIcon;
  final buttonIcon;
  final buttonText;
  final width;
  final height;
  final onTap;
  const FilledButton(
      {super.key,
      required this.isIcon,
      this.buttonIcon,
      required this.buttonText,
      required this.width,
      required this.isActive,
      required this.height,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      splashColor: Colors.white54,
      borderRadius: BorderRadius.circular(60 / 2),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60 / 2),
            color: isActive == true ? Colors.white : Colors.white54),
        child: Center(
          child: isIcon == true
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(buttonIcon, scale: 21),
                    SizedBox(
                      width: size.width / 70,
                    ),
                    Text(
                      buttonText,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    )
                  ],
                )
              : Text(
                  buttonText,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
        ),
      ),
    );
  }
}

class OutlineButton extends StatelessWidget {
  final buttonText;
  final width;
  const OutlineButton({super.key, this.buttonText, this.width});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 22,
      width: width,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white70, width: 1.5),
          borderRadius: BorderRadius.circular(60 / 2),
          color: Colors.transparent),
      child: Center(
        child: Text(
          buttonText,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }
}
