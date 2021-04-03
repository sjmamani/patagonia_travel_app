import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui_app/components/bottom_nav_bar.dart';
import 'package:travel_ui_app/constants.dart';
import 'package:travel_ui_app/util.dart';

import 'components/places_categories.dart';
import 'components/popular_places.dart';
import 'components/recommended.dart';
import 'components/recommended_places.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: buildAppBar(
        context,
        title: 'Discover',
        actions: [
          IconButton(
            icon: ClipOval(
              child: Image.network(getAvatarImage()),
            ),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const ClipOval(
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            PlacesCategories(),
            PopularPlaces(),
            Recommended(),
            RecommendedPlaces()
          ],
        ),
      ),
    );
  }
}

AppBar buildAppBar(BuildContext context,
    {String title, List<Widget> actions, Widget leading}) {
  return AppBar(
    actions: actions,
    backgroundColor: Colors.transparent,
    centerTitle: true,
    elevation: 0,
    leading: leading,
    title: Text(
      title,
      style: GoogleFonts.merriweather(
        color: kTextColor,
        fontSize: 27,
      ),
    ),
  );
}
