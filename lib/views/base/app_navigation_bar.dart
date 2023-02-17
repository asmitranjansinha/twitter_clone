import 'package:flutter/material.dart';
import 'package:twitter_clone/constants/app_assets.dart';
import 'package:twitter_clone/views/home/home_page.dart';
import 'package:twitter_clone/views/inbox/inbox_page.dart';
import 'package:twitter_clone/views/notification/notification_page.dart';
import 'package:twitter_clone/views/search/search_page.dart';
import 'package:twitter_clone/views/spaces/spaces_page.dart';

class AppNavigation extends StatefulWidget {
  const AppNavigation({super.key});

  @override
  State<AppNavigation> createState() => __AppNavigationStateState();
}

class __AppNavigationStateState extends State<AppNavigation> {
  final screens = [
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
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                AppAssets.homeIcon,
                scale: 25,
              ),
              activeIcon: Image.asset(
                AppAssets.homeIconFilled,
                scale: 25,
              ),
              label: "home"),
          BottomNavigationBarItem(
              icon: Image.asset(
                AppAssets.searchIcon,
                scale: 25,
              ),
              activeIcon: Image.asset(
                AppAssets.searchIconFilled,
                scale: 25,
              ),
              label: "search"),
          BottomNavigationBarItem(
              icon: Image.asset(
                AppAssets.micIcon,
                scale: 25,
              ),
              activeIcon: Image.asset(
                AppAssets.micIconFilled,
                scale: 25,
              ),
              label: "spaces"),
          BottomNavigationBarItem(
              icon: Image.asset(
                AppAssets.bellIcon,
                scale: 25,
              ),
              activeIcon: Image.asset(
                AppAssets.bellIconFilled,
                scale: 25,
              ),
              label: "notifications"),
          BottomNavigationBarItem(
              icon: Image.asset(
                AppAssets.inboxIcon,
                scale: 25,
              ),
              activeIcon: Image.asset(
                AppAssets.inboxIconFilled,
                scale: 25,
              ),
              label: "direct messages")
        ],
      ),
    );
  }
}
