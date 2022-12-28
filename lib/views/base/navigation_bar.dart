import 'package:flutter/material.dart';
import 'package:twitter_clone/constants/images.dart';
import 'package:twitter_clone/views/home/home_page.dart';
import 'package:twitter_clone/views/inbox/inbox_page.dart';
import 'package:twitter_clone/views/notification/notification_page.dart';
import 'package:twitter_clone/views/search/search_page.dart';
import 'package:twitter_clone/views/spaces/spaces_page.dart';

class TwitterNavigation extends StatefulWidget {
  TwitterNavigation({super.key});

  @override
  State<TwitterNavigation> createState() => _TwitterNavigationState();
}

class _TwitterNavigationState extends State<TwitterNavigation> {
  final screen = [
    const TwitterHome(),
    const TwitterSearch(),
    const TwitterSpaces(),
    const TwitterNotifications(),
    const TwitterInbox()
  ];

  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                Images.home,
                scale: 25,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                Images.search,
                scale: 25,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                Images.mic,
                scale: 25,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                Images.notification,
                scale: 25,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                Images.mail,
                scale: 25,
              ),
              label: "")
        ],
      ),
    );
  }
}
