import 'package:flutter/material.dart';

import '../../constants/images.dart';
import '../landing/landing_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});
  static const route = 'signup';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
        height: size.height,
        width: size.width,
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);

            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              elevation: 0,
              title: Image.asset(Images.twitter, scale: 20),
              centerTitle: true,
              leading: InkWell(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, LandingPage.route, (route) => false);
                },
                borderRadius: BorderRadius.circular(60 / 2),
                child: Image.asset(
                  Images.back,
                  scale: 23,
                ),
              ),
            ),
            body: Column(
              children: [
                SizedBox(
                  height: size.height / 40,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Create your account",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Chirp',
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
