import 'package:flutter/material.dart';
import 'package:twitter_clone/views/base/custom_app_buttons.dart';

import '../../constants/images.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});
  static const route = 'landing';

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
        ),
        body: Column(
          children: [
            SizedBox(
              height: size.height / 3.8,
            ),
            const Padding(
                padding: EdgeInsets.only(left: 32, right: 32),
                child: Text(
                  "See what's happening in the world right now.",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Chirp',
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: size.height / 4,
            ),
            FilledButton(
              isIcon: true,
              buttonText: "Continue with Google",
              buttonIcon: Images.google,
              width: size.width / 1.2,
              isActive: true,
              height: size.height / 20,
            ),
            SizedBox(
              height: size.height / 115,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey[800],
                      thickness: 0.5,
                    ),
                  ),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  Text(
                    'or',
                    style: TextStyle(color: Colors.grey[600], fontSize: 11),
                  ),
                  SizedBox(
                    width: size.width / 30,
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey[800],
                      thickness: 0.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height / 115,
            ),
            FilledButton(
              isIcon: false,
              buttonText: "Create Account",
              width: size.width / 1.2,
              isActive: true,
              height: size.height / 20,
            ),
            SizedBox(
              height: size.height / 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "By signing up, you agree to our ",
                    style: TextStyle(color: Colors.grey, fontSize: 12.5),
                  ),
                  Text(
                    "Terms",
                    style: TextStyle(color: Colors.blue, fontSize: 12.5),
                  ),
                  Text(
                    ", ",
                    style: TextStyle(color: Colors.grey, fontSize: 12.5),
                  ),
                  Text(
                    "Privacy Policy ",
                    style: TextStyle(color: Colors.blue, fontSize: 12.5),
                  ),
                  Text(
                    "and",
                    style: TextStyle(color: Colors.grey, fontSize: 12.5),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height / 160,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38),
              child: Row(
                children: const [
                  Text(
                    "Cookie Use",
                    style: TextStyle(color: Colors.blue, fontSize: 12.5),
                  ),
                  Text(
                    ".",
                    style: TextStyle(color: Colors.grey, fontSize: 12.5),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height / 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38),
              child: Row(
                children: [
                  const Text(
                    "Have an account already? ",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  InkWell(
                    splashColor: Colors.blue,
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(1.0),
                      child: Text(
                        "Log in",
                        style: TextStyle(color: Colors.blue, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
