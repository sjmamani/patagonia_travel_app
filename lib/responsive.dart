import 'package:flutter/material.dart';

bool isLandscape(BuildContext context) =>
    MediaQuery.of(context).orientation == Orientation.landscape;

bool isTab(BuildContext context) {
  print(MediaQuery.of(context).size.aspectRatio);
  return MediaQuery.of(context).size.aspectRatio >= 0.7 &&
      MediaQuery.of(context).size.aspectRatio < 1.6;
}
