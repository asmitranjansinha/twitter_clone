import 'package:flutter/material.dart';
import 'package:twitter_clone/views/base/custom_text_field.dart';

import '../../constants/images.dart';

class LoginPageEmail extends StatelessWidget {
  const LoginPageEmail({super.key});
  static const route = 'login';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Image.asset(Images.twitter, scale: 20),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              Images.close,
              scale: 35,
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: size.height / 40,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "To get started, first enter your phone, email, or @username",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Chirp',
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: size.height / 40,
            ),
            const TwitterTextField(hintText: "Phone, email, or username")
          ],
        ),
      ),
    );
  }
}
