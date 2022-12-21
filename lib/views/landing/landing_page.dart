import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants/images.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
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
            Text(
              "See what's happening in the world right now.",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Chirp',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
