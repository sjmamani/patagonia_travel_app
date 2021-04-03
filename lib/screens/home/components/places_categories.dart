import 'package:flutter/material.dart';
import 'package:travel_ui_app/constants.dart';

import '../../../responsive.dart';

class PlacesCategories extends StatefulWidget {
  const PlacesCategories({
    Key key,
  }) : super(key: key);

  @override
  _PlacesCategoriesState createState() => _PlacesCategoriesState();
}

class _PlacesCategoriesState extends State<PlacesCategories> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> placesCategories = [
      'Popular',
      'Most Visited',
      'Río Negro',
      'Neuquén',
      'Chubut',
      'Santa Cruz',
      'Tierra del Fuego',
    ];
    return Padding(
      padding: const EdgeInsets.all(30),
      child: SizedBox(
        height: isTab(context) ? 35 : 25,
        child: ListView.builder(
            itemCount: placesCategories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    placesCategories[index],
                    style: TextStyle(
                        fontSize: isTab(context) ? 24 : 16,
                        color:
                            selectedIndex == index ? kPrimaryColor : kTextColor,
                        fontWeight: selectedIndex == index
                            ? FontWeight.bold
                            : FontWeight.normal),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
