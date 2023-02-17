import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/constants/app_assets.dart';
import 'package:twitter_clone/constants/app_dimensions.dart';

class TweetWidget extends StatelessWidget {
  const TweetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: appWidth(context),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                AppAssets.userAvatar,
                scale: 10,
              ),
              horizontalSpace(10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text(
                        "Asmit Ranjan Sinha",
                        style: TextStyle(fontSize: 16),
                      ),
                      horizontalSpace(10.0),
                      Text(
                        "@asmy8h . 1d",
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 16),
                      )
                    ],
                  ),
                  const Text(
                    "Are you ready to make your first tweetjfhadsj\nhdjashdjhasjdhasjhdjashdjhasjdha\nsahdjhsajdhasjhdjashdkjhaskj\ndhajshdjhasjdhasjdhajshdjsahdjasj",
                    style: TextStyle(fontSize: 16),
                  ),
                  verticalSpace(10.0),
                  Row(
                    children: [
                      const Icon(Icons.comment_sharp),
                      horizontalSpace(50.0),
                      const Icon(Icons.reset_tv),
                      horizontalSpace(50.0),
                      const Icon(CupertinoIcons.heart),
                      horizontalSpace(50.0),
                      const Icon(
                          CupertinoIcons.square_stack_3d_down_dottedline),
                      horizontalSpace(50.0),
                      const Icon(CupertinoIcons.share)
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
