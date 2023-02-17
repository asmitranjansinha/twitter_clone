import 'package:flutter/material.dart';
import 'package:twitter_clone/constants/app_assets.dart';

appBar(innerBoxIsScrolled, {titleWidget, bottomWidget}) {
  return SliverAppBar(
    pinned: true,
    floating: true,
    scrolledUnderElevation: 0.5,
    forceElevated: innerBoxIsScrolled,
    leading: Padding(
      padding: const EdgeInsets.all(10.0),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(60 / 2),
          child: Image.asset(
            AppAssets.userAvatar,
          )),
    ),
    title: titleWidget,
    bottom: bottomWidget,
  );
}
