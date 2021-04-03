import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:travel_ui_app/models/place.dart';
import 'package:travel_ui_app/responsive.dart';
import 'package:travel_ui_app/screens/details/components/location.dart';
import 'package:travel_ui_app/screens/details/components/rating.dart';

import 'days_chooser.dart';
import 'price_and_book.dart';

class PlaceInformation extends StatelessWidget {
  const PlaceInformation({
    Key key,
    @required this.place,
  }) : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return DelayedDisplay(
      delay: const Duration(milliseconds: 100),
      fadingDuration: const Duration(milliseconds: 300),
      slidingBeginOffset: const Offset(0, 1),
      child: Container(
        height: size.height * 0.7,
        width: double.infinity,
        margin: EdgeInsets.only(top: size.height * 0.35),
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            top: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  place.name,
                  style: TextStyle(
                      fontSize: isTab(context) ? 32 : 24,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                Location(place: place),
                const SizedBox(
                  height: 10,
                ),
                Rating(place: place),
                const SizedBox(
                  height: 25,
                ),
                const DaysChooser(),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Description',
                  style: TextStyle(
                    fontSize: isTab(context) ? 28 : 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  place.description,
                  style: TextStyle(fontSize: isTab(context) ? 20 : 16),
                ),
                const SizedBox(
                  height: 50,
                ),
                const PriceAndBook(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
