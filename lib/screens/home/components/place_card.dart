import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:travel_ui_app/constants.dart';
import 'package:travel_ui_app/models/place.dart';
import 'package:travel_ui_app/responsive.dart';
import 'package:travel_ui_app/util.dart';

import 'liked_button.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    Key key,
    @required this.place,
  }) : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 30),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(place.image),
            fit: BoxFit.cover,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            height: isTab(context) ? 120 : 80,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: cardInfoDecoration,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: isTab(context) ? null : 200.0,
                      child: Text(
                        place.name,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: isTab(context) ? 30 : 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const Spacer(),
                    const LikedButton()
                  ],
                ),
                SmoothStarRating(
                  allowHalfRating: false,
                  onRated: (v) {},
                  rating: place.rating,
                  size: isTab(context) ? 35 : 20,
                  isReadOnly: true,
                  color: kRatingStarColor,
                  borderColor: kRatingStarColor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
