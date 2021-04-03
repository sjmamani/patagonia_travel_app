import 'package:flutter/material.dart';
import 'package:travel_ui_app/constants.dart';
import 'package:travel_ui_app/models/place.dart';
import 'package:travel_ui_app/responsive.dart';
import 'place_card.dart';

class PopularPlaces extends StatefulWidget {
  const PopularPlaces({
    Key key,
  }) : super(key: key);

  @override
  _PopularPlacesState createState() => _PopularPlacesState();
}

class _PopularPlacesState extends State<PopularPlaces> {
  int currentSlider = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: isTab(context) ? 450 : 260,
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentSlider = value;
                  });
                },
                controller: PageController(
                  viewportFraction: isTab(context) ? 0.9 : 0.8,
                ),
                itemCount: demoPlaces.length,
                itemBuilder: (context, index) =>
                    PlaceCard(place: demoPlaces[index]),
              )),
          Expanded(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      demoPlaces.length, (index) => buildDotNav(index: index))))
        ],
      ),
    );
  }

  AnimatedContainer buildDotNav({int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: currentSlider == index
              ? kPrimaryColor
              : kPrimaryColor.withAlpha(70)),
      height: 6,
      margin: const EdgeInsets.only(right: 5),
      width: currentSlider == index ? 24 : 6,
    );
  }
}
