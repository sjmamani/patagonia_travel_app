import 'package:flutter/material.dart';
import 'package:travel_ui_app/models/place.dart';
import 'package:travel_ui_app/responsive.dart';
import 'package:travel_ui_app/screens/details/details.dart';

import 'grid_place_card.dart';

class RecommendedPlaces extends StatelessWidget {
  const RecommendedPlaces({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GridView.count(
          crossAxisCount: isLandscape(context) ? 3 : 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: isLandscape(context)
              ? const EdgeInsets.symmetric(vertical: 20, horizontal: 50)
              : const EdgeInsets.all(20),
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 1.2,
          children: List.generate(demoPlaces.length, (index) {
            return GridPlaceCard(
              place: demoPlaces[index],
              tapEvent: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DetailsScreen(
                              place: demoPlaces[index],
                            )));
              },
            );
          })),
    );
  }
}
