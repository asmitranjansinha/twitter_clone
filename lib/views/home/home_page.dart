import 'package:flutter/material.dart';
import 'package:twitter_clone/constants/app_assets.dart';
import 'package:twitter_clone/views/base/app_bar.dart';
import 'package:twitter_clone/views/widgets/tweet_widget.dart';

class TwitterHome extends StatefulWidget {
  const TwitterHome({super.key});

  @override
  State<TwitterHome> createState() => _TwitterHomeState();
}

class _TwitterHomeState extends State<TwitterHome>
    with SingleTickerProviderStateMixin {
  late TabController homeTabController;

  @override
  void initState() {
    homeTabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder: ((context, innerBoxIsScrolled) {
              return [
                appBar(innerBoxIsScrolled,
                    titleWidget: Image.asset(
                      AppAssets.twitter,
                      scale: 20,
                    ),
                    bottomWidget:
                        TabBar(controller: homeTabController, tabs: const [
                      Tab(
                        child: Center(
                          child: Text("For you"),
                        ),
                      ),
                      Tab(
                        child: Center(
                          child: Text(
                            "Following",
                          ),
                        ),
                      )
                    ]))
              ];
            }),
            body: TabBarView(
                controller: homeTabController,
                children: const [HomeForYou(), HomeFollowing()])));
  }
}

class HomeForYou extends StatelessWidget {
  const HomeForYou({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: const [
            TweetWidget(),
            TweetWidget(),
            TweetWidget(),
            TweetWidget(),
            TweetWidget(),
            TweetWidget(),
            TweetWidget(),
            TweetWidget(),
          ],
        ),
      ),
    );
  }
}

class HomeFollowing extends StatelessWidget {
  const HomeFollowing({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: const [
            TweetWidget(),
            TweetWidget(),
            TweetWidget(),
            TweetWidget(),
            TweetWidget(),
            TweetWidget(),
            TweetWidget(),
            TweetWidget(),
          ],
        ),
      ),
    );
  }
}
