import 'package:flutter/material.dart';
import 'package:twitter_clone/views/widgets/custom_app_buttons.dart';
import 'package:twitter_clone/views/widgets/custom_text_field.dart';
import 'package:twitter_clone/views/landing/landing_page.dart';

import '../../constants/app_assets.dart';

class LoginPageEmail extends StatefulWidget {
  const LoginPageEmail({super.key});
  static const route = 'login';

  @override
  State<LoginPageEmail> createState() => _LoginPageEmailState();
}

class _LoginPageEmailState extends State<LoginPageEmail> {
  bool isEmpty = false;

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
              title: Image.asset(AppAssets.twitter, scale: 20),
              centerTitle: true,
              leading: InkWell(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, LandingPage.route, (route) => false);
                },
                child: Image.asset(
                  AppAssets.close,
                  scale: 35,
                ),
              ),
            ),
            body: Column(
              children: [
                SizedBox(
                  height: size.height / 50,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "To get started, first enter your phone, email, or @username",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Chirp',
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: size.height / 55,
                ),
                TwitterTextField(
                    hintText: "Phone, email, or username",
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        setState(() {
                          isEmpty = true;
                        });
                      } else {
                        setState(() {
                          isEmpty = false;
                        });
                      }
                    }),
              ],
            ),
            bottomNavigationBar: Container(
              height: size.height / 12.5,
              decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        color: Colors.blueGrey.shade800, width: 0.2)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlineButton(
                      buttonText: "Forgot Password?",
                      width: size.width / 2.7,
                    ),
                    FilledButton(
                      isIcon: false,
                      buttonText: "Next",
                      width: size.width / 6,
                      isActive: isEmpty,
                      height: size.height / 22,
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
