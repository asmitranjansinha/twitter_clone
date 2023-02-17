import 'package:flutter/material.dart';

horizontalSpace(width) {
  return SizedBox(
    width: width,
  );
}

verticalSpace(height) {
  return SizedBox(
    height: height,
  );
}

appWidth(context) {
  return MediaQuery.of(context).size.width;
}

appHeight(context) {
  return MediaQuery.of(context).size.height;
}