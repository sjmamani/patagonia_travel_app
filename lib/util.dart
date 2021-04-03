import 'package:flutter/material.dart';
import 'package:travel_ui_app/constants.dart';

final cardInfoDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: kCardInfoBG.withOpacity(0.6),
);

final likedWidgetDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(50),
  color: Colors.white,
);

String getAvatarImage() {
  return 'https://ui-avatars.com/api/?background=random';
}
