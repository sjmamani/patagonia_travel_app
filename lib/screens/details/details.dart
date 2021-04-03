import 'package:flutter/material.dart';
import 'package:travel_ui_app/components/custom_back_button.dart';
import 'package:travel_ui_app/models/place.dart';
import 'package:travel_ui_app/screens/home/home.dart';

import 'components/place_image.dart';
import 'components/place_information.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key, this.place}) : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context, title: '', actions: [],
          leading: CustomBackButton(
        tapEvent: () {
          Navigator.pop(context);
        },
      )),
      body: Stack(
        children: [
          PlaceImage(place: place),
          PlaceInformation(place: place),
        ],
      ),
    );
  }
}
